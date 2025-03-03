(global-set-key (kbd "C-c S") 'eshell)

(defun mkaschenko/setup-eshell-keys ()
  (define-key eshell-mode-map (kbd "C-c k") 'mkaschenko/erase-buffer-newline))

(add-hook 'eshell-mode-hook 'mkaschenko/setup-eshell-keys)

(provide 'init-eshell)
