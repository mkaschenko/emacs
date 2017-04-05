(require 'misc)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(setq-default indent-tabs-mode nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun mkaschenko/erase-buffer ()
  "Erase contents of the current buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun mkaschenko/toggle-comment-on-line ()
  "Comment or uncomment the current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(global-set-key (kbd "M-Z") 'zap-up-to-char)
(global-set-key (kbd "C-j") 'delete-indentation)
(global-set-key (kbd "C-c r") 'query-replace)
(global-set-key (kbd "C-x P") 'previous-buffer)
(global-set-key (kbd "C-c ;") 'mkaschenko/toggle-comment-on-line)

(provide 'init-misc)
