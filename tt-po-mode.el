;;; tt-po-mode.el --- Major mode for editing gettext's PO and POT files

;; Copyright (C) 2020 Takayuki Tanaka

;; Author: Takayuki Tanaka
;; Maintainer: Takayuki Tanaka <aharotias2@gmail.com>
;; URL: https://github.com/aharotias/tt-po-mode
;; Keywords: languages gettext
;; Version: 0.1
;; Package-Requires: ((emacs "24.3"))
;; License: GPL-3.0-or-later

;; GettextのPOファイル用のモードを作成する。
(define-generic-mode tt-po-mode
  ;; comment-list
  '("#")

  ;; keyword-list
  '("msgid" "msgstr")

  ;; font-lock-list
  '(("\".*\"" . font-lock-string-face))

  ;; auto-mode-list
  '("\\.pot\\'" "\\.po\\'")

  ;; function-list
  nil
  
  ;; &optional docstring
  "This is a major mode for editing gettext's po files")
