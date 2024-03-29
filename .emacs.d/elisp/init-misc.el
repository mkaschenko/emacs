(setq-default ;; kill-buffer-query-functions nil https://emacs.stackexchange.com/a/46087
              truncate-lines t
              indent-tabs-mode nil)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      require-final-newline 'visit-save
      tags-revert-without-query 1)

(defun mkaschenko/comment-or-uncomment-current-line ()
  "Comment or uncomment the current line."
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(defun mkaschenko/pbcopy-region (&optional start end)
  "Copy the region to the pasteboard."
  (interactive "r")
  (call-process-region start end "pbcopy")
  (setq deactivate-mark t))

(global-set-key (kbd "<f7>") 'beginning-of-buffer)
(global-set-key (kbd "<f8>") 'end-of-buffer)
(global-set-key (kbd "<f9>") 'scroll-up-command)
(global-set-key (kbd "<f10>") 'scroll-down-command)
(global-set-key (kbd "<f11>") 'scroll-other-window)
(global-set-key (kbd "<f12>") 'scroll-other-window-down)

(global-set-key (kbd "C-c ;") 'mkaschenko/comment-or-uncomment-current-line)
(global-set-key (kbd "C-c C-j") 'delete-indentation)
(global-set-key (kbd "C-c r") 'query-replace)
(global-set-key (kbd "M-+") 'mkaschenko/pbcopy-region)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-misc)
