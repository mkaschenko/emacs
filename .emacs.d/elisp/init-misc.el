;; TODO: split right and move there C-x 3
;;       split down and move there C-x 2
;;
;;       If you set set-mark-command-repeat-pop to non-nil,
;;       then immediately after you type C-u C-SPC,
;;       you can type C-SPC instead of C-u C-SPC to cycle through the
;;       mark ring. By default, set-mark-command-repeat-pop is nil.
(require 'misc)

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun mkaschenko/previous-window (count)
  (interactive "p")
  (other-window (- count)))

(defun mkaschenko/erase-buffer ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(global-set-key (kbd "M-Z") 'zap-up-to-char)
(global-set-key (kbd "C-x p") 'mkaschenko/previous-window)
(global-set-key (kbd "C-j") 'delete-indentation)
(global-set-key (kbd "C-c r") 'query-replace)

(provide 'init-misc)
