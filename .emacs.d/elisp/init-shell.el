(global-set-key (kbd "C-c s") 'shell)

(defun mkaschenko/setup-shell-keys ()
  (define-key shell-mode-map (kbd "C-c k") 'mkaschenko/erase-buffer-newline))

(add-hook 'shell-mode-hook 'mkaschenko/setup-shell-keys)

(provide 'init-shell)
