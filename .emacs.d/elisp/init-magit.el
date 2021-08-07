(setq magit-completing-read-function   'magit-ido-completing-read
      magit-popup-show-common-commands nil)

(global-set-key (kbd "C-c L") 'magit-find-file)
(global-set-key (kbd "C-c b") 'magit-blame)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c l") 'magit-log-buffer-file)

(add-hook 'magit-mode-hook (lambda ()
                             (setq truncate-lines nil)))

(provide 'init-magit)
