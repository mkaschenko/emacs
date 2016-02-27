(require 'misc)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-aggressive-indent-mode 1)

(defun mkaschenko/erase-buffer ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(global-set-key (kbd "M-Z") 'zap-up-to-char)
(global-set-key (kbd "C-j") 'delete-indentation)
(global-set-key (kbd "C-c r") 'query-replace)
(global-set-key (kbd "C-x P") 'previous-buffer)

(provide 'init-misc)
