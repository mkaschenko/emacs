(require 'misc)
(require 'dash-at-point)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-aggressive-indent-mode 1)

(defun mkaschenko/erase-buffer ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun mkaschenko/dash-at-point ()
  (interactive)
  (let ((thing (read-string "dash: " (thing-at-point 'symbol))))
    (apply 'dash-at-point-run-search (split-string thing))))

(global-set-key (kbd "M-Z") 'zap-up-to-char)
(global-set-key (kbd "C-j") 'delete-indentation)
(global-set-key (kbd "C-c r") 'query-replace)
(global-set-key (kbd "C-x P") 'previous-buffer)
(global-set-key (kbd "C-c D") 'mkaschenko/dash-at-point)

(provide 'init-misc)
