(setq magit-completing-read-function   'magit-ido-completing-read
      magit-fetch-arguments            '("--prune")
      magit-gh-pulls-arguments         '("--open-new-in-browser")
      magit-log-arguments              '("--graph" "--decorate" "--follow" "-n256")
      magit-merge-arguments            '("--ff-only")
      magit-popup-show-common-commands nil
      magit-rebase-arguments           '("--autosquash" "--autostash"))

(global-set-key (kbd "C-c L") 'magit-find-file)
(global-set-key (kbd "C-c b") 'magit-blame)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c l") 'magit-log-buffer-file)

(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

(provide 'init-magit)
