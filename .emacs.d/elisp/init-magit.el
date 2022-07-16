(setq magit-completing-read-function 'magit-ido-completing-read
      magit-popup-show-common-commands nil)

(global-set-key (kbd "C-c b") 'magit-blame)
(global-set-key (kbd "C-c g") 'magit-status)

(provide 'init-magit)

;; (global-set-key (kbd "C-c F") 'magit-find-file)
;; (global-set-key (kbd "C-c L") 'magit-log-buffer-file)
