(defun set-key-list (setter-func keybinds-list)
  (dolist (keybind keybinds-list)
    (let ((key (kbd (car keybind)))
          (cmd (cadr keybind)))
      (cond ((null cmd)
             (funcall setter-func key nil))
            ((and (symbolp cmd) (commandp cmd))
             (funcall setter-func key cmd))
            ((and (not (listp cmd)) (commandp (car cmd)))
             (funcall setter-func key cmd))
            (t
             (funcall setter-func key (list 'lambda 'nil '(interactive) cmd)))))))

(defun global-set-key-list (keybinds-list)
  (set-key-list 'global-set-key keybinds-list))

(defun local-set-key-list (keybinds-list)
  (set-key-list 'local-set-key keybinds-list))
