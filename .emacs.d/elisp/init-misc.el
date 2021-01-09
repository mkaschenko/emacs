(require 'misc)

(setq-default indent-tabs-mode nil
              truncate-lines   t)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      require-final-newline  'visit-save)

(defun mkaschenko/erase-buffer ()
  "Erase contents of the current buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun mkaschenko/toggle-comment-on-line ()
  "Comment or uncomment the current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(global-set-key (kbd "C-c ;") 'mkaschenko/toggle-comment-on-line)
(global-set-key (kbd "C-c r") 'query-replace)
(global-set-key (kbd "C-c C-j") 'delete-indentation)
(global-set-key (kbd "M-Z")   'zap-up-to-char)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-misc)
