(setq-default global-auto-revert-mode t
              kill-buffer-query-functions nil ; https://emacs.stackexchange.com/a/46087
              truncate-lines t
              indent-tabs-mode nil)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      require-final-newline 'visit-save
      tags-revert-without-query 1)

(defun mkaschenko/erase-buffer ()
  "Erase contents of the current buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun mkaschenko/erase-buffer-newline ()
  "Erase contents of the current buffer and insert a final newline"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (comint-send-input)))

(defun mkaschenko/toggle-comment-on-line ()
  "Comment or uncomment the current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(defun mkaschenko/pbcopy-on-region (&optional start end)
  (interactive "r")
  (call-process-region start end "pbcopy")
  (setq deactivate-mark t))

(global-set-key (kbd "<f7>") 'beginning-of-buffer)
(global-set-key (kbd "<f8>") 'end-of-buffer)
(global-set-key (kbd "<f9>") 'scroll-up-command)
(global-set-key (kbd "<f10>") 'scroll-down-command)
(global-set-key (kbd "<f11>") 'scroll-other-window)
(global-set-key (kbd "<f12>") 'scroll-other-window-down)

(global-set-key (kbd "C-c ;") 'mkaschenko/toggle-comment-on-line)
(global-set-key (kbd "C-c C-j") 'delete-indentation)
(global-set-key (kbd "C-c \\") 'toggle-truncate-lines)
(global-set-key (kbd "C-c r") 'query-replace)
(global-set-key (kbd "M-+") 'mkaschenko/pbcopy-on-region)
(global-set-key (kbd "M-Z") 'zap-up-to-char)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-misc)
