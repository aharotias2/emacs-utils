;;; tt-vala-mode.el --- Major mode for editing Vala code

;; Copyright (C) 2020 Takayuki Tanaka

;; Author: Takayuki Tanaka
;; Maintainer: Takayuki Tanaka <aharotias2@gmail.com>
;; URL: https://github.com/aharotias/tt-vala-mode
;; Keywords: languages vala
;; Version: 0.1
;; Package-Requires: ((emacs "24.3"))
;; License: GPL-3.0-or-later

;; tt-vala-modeを作成する。
(setq tt-indent-offset 4)

(defadvice indent-rigidly (after deactivate-mark-nil activate)
  (setq deactivate-mark nil))

(defun tt-indent-region (offset)
  (let ((p1 (mark))
        (p2 (point)))
    (indent-rigidly (min p1 p2) (max p1 p2) offset)))

(defun tt-indent-right (offset)
  (let* ((cc (current-column)) (i (+ cc 1)))
    (while (not (= (% i offset) 0))
      (setq i (+ i 1)))
    (indent-to i)))

(defun tt-indent-left (offset)
  (let ((save-column (current-column)) (num-killed-chars 0))
    (beginning-of-line)
    (while (and (> offset 0) (= (char-after (point)) 32))
      (delete-char 1)
      (setq offset (- offset 1))
      (setq num-killed-chars (+ num-killed-chars 1)))
    (move-to-column (- save-column num-killed-chars))))

(defun tt-indent (offset)
  (if mark-active
      (tt-indent-region offset)
    (if (> offset 0)
        (tt-indent-right offset)
      (tt-indent-left (- 0 offset)))))

(defun tt-newline-and-indent ()
  (let ((auto-indent-offset (let ((before-char (char-before (point))))
                              (if (or (= before-char 123) (= before-char 40))
                                  tt-indent-offset
                                0))))
    (newline)
    (indent-relative-maybe)
    (if (> auto-indent-offset 0)
        (tt-indent auto-indent-offset))))

(define-generic-mode tt-vala-mode
  ;; comment-list
  '("//" ("/*" . "*/"))

  ;; keyword-list
  '("if" "else" "switch" "case" "default" "do" "while" "for" "foreach" "in"
    "break" "continue" "return" "try" "catch" "finally" "throw" "lock"
    "class" "interface" "struct" "enum" "delegate" "errordomain"
    "const" "weak" "unowned" "dynamic" "callback" "begin" "end"
    "abstract" "virtual" "override" "signal" "extern" "static" "async" "inline" "new"
    "public" "private" "protected" "internal" "out" "ref" "throws" "requires" "ensures"
    "namespace" "using" "as" "is" "in" "new" "delete" "sizeof" "typeof"
    "this" "base" "get" "set" "construct" "default" "value" "connect"
    "construct" "static construct" "class construct" "var" "yield" "global" "owned")

  ;; font-lock-list
  `(("\".*\"" . font-lock-string-face)
    ("\"\"\".*\"\"\"" . font-lock-string-face)
    ("'[^']*'" . font-lock-string-face)
    ("[][+-/*%=^~|{}()!&<>;:,.?/@]" . font-lock-builtin-face)
    (,(string-join
       "\\(" "\\)" "\\|"
       '("true" "false" "null" "void"
         "int" "uint" "long" "string" "double" "int16" "uint16" "int32" "uint32"
         "int64" "uint64" "float" "bool" "char" "uchar") (lambda (e) (concat "\\b" e "\\b")))
     . font-lock-builtin-face)
    ("\\b[0-9]+\\b" . font-lock-constant-face))

  ;; auto-mode-list
  '("\\.vala\\'" "\\.vapi\\'")

  ;; function-list
  nil
  
  ;; &optional docstring
  "This is a major mode for editing vala programming language")
