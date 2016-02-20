;; TODO: split right and move there C-x 3
;;       split down and move there C-x 2
(require 'misc)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun mkaschenko/previous-window (count)
  (interactive "p")
  (other-window (- count)))
(global-aggressive-indent-mode 1)

(defun mkaschenko/erase-buffer ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(global-set-key (kbd "M-Z") 'zap-up-to-char)
(global-set-key (kbd "C-x p") 'mkaschenko/previous-window)
(global-set-key (kbd "C-j") 'delete-indentation)
(global-set-key (kbd "C-c r") 'query-replace)

(provide 'init-misc)
