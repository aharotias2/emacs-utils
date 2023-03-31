(define-generic-mode comment-reverse-mode
  ;; comment-list
  '(("*/" . "/*"))

  ;; keyword-list
  nil

  ;; font-lock-list
  nil

  ;; auto-mode-list
  nil

  ;; function-list
  nil
  
  ;; &optional docstring
  "This is a major mode for reverting comment color")

;;----------------------------------------------------------------------------------------------------
;;
;; revert-comment
;;
;; C系の言語でコメントとコメントでない部分を入れ替える
;;
;;----------------------------------------------------------------------------------------------------

(setq comment-reverted-p nil)

(defun revert-comment ()
  (interactive)
  (if (not comment-reverted-p)
      ;; コメントが反転されていない場合 (通常の場合)
      (progn
        ;; 現在のメジャーモードを保存する
        (major-mode-suspend)
        ;; コメント反転モードにする
        (comment-reverse-mode)
        ;; フラグ設定
        (setq comment-reverted-p t))
    (progn
      ;; 保存したメジャーモードに復帰する
      (major-mode-restore)
      ;; フラグ設定
      (setq comment-reverted-p nil))))

(provide 'comment-reverse-mode)
