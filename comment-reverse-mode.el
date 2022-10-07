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
