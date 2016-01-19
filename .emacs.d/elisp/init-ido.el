(ido-mode t)
(ido-everywhere t)
(ido-ubiquitous-mode t)
(ido-yes-or-no-mode t)
(flx-ido-mode t)

(global-set-key (kbd "C-c m") 'idomenu)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(provide 'init-ido)
