(setq magit-completing-read-function 'ido-completing-read
      magit-popup-show-common-commands nil)

(global-set-key (kbd "C-c B") 'magit-blame-addition)
(global-set-key (kbd "C-c F") 'magit-find-file)
(global-set-key (kbd "C-c L") 'magit-log-buffer-file)
(global-set-key (kbd "C-c g") 'magit-status)

(provide 'init-magit)
