(setq magit-completing-read-function 'magit-ido-completing-read)
(setq magit-popup-show-common-commands nil)
(setq magit-fetch-arguments '("--prune"))
(setq magit-log-arguments '("--graph" "--decorate" "--follow" "-n256"))
(setq magit-merge-arguments '("--ff-only"))
(setq magit-rebase-arguments '("--autosquash" "--autostash"))

(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c b") 'magit-blame)
(global-set-key (kbd "C-c l") 'magit-log-buffer-file)

(provide 'init-magit)
