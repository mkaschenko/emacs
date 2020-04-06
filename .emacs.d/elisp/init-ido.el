(flx-ido-mode t)
(ido-everywhere t)
(ido-mode t)
(ido-ubiquitous-mode t)
(ido-yes-or-no-mode t)

(global-set-key (kbd "C-c m") 'idomenu)
(global-set-key (kbd "M-X")   'smex-major-mode-commands)
(global-set-key (kbd "M-x")   'smex)

(provide 'init-ido)
