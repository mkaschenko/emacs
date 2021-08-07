(require 'misc)

(setq-default global-auto-revert-mode t
              indent-tabs-mode nil
              kill-buffer-query-functions nil ; https://emacs.stackexchange.com/a/46087
              truncate-lines nil)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      require-final-newline  'visit-save)

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
  (keyboard-escape-quit)
  (message "Copied"))

(global-unset-key (kbd "C-z"))

(global-set-key (kbd "C-c ;") 'mkaschenko/toggle-comment-on-line)
(global-set-key (kbd "C-c r") 'query-replace)
(global-set-key (kbd "C-c C-j") 'delete-indentation)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-+") 'mkaschenko/pbcopy-on-region)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-misc)
