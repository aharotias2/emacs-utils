(defun global-set-key-list (keybinds-list)
  (dolist (keybind keybinds-list)
    (let ((key (kbd (car keybind)))
          (cmd (cadr keybind)))
      (cond ((null cmd)
             (global-set-key key nil))
            ((and (symbolp cmd) (commandp cmd))
             (global-set-key key cmd))
            ((and (not (listp cmd)) (commandp (car cmd)))
             (global-set-key key cmd))
            (t
             (global-set-key key (list 'lambda 'nil '(interactive) cmd)))))))

(defun local-set-key-list (keybinds-list)
  (dolist (keybind keybinds-list)
    (let ((key (kbd (car keybind)))
          (cmd (cadr keybind)))
      (cond ((null cmd)
             (local-set-key key nil))
            ((and (symbolp cmd) (commandp cmd))
             (local-set-key key cmd))
            ((and (not (listp cmd)) (commandp (car cmd)))
             (local-set-key key cmd))
            (t
             (local-set-key key (list 'lambda 'nil '(interactive) cmd)))))))