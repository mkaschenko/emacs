(menu-bar-mode -1)

(add-to-list 'custom-theme-load-path
	     "~/.emacs.d/themes/emacs-color-theme-solarized/")
(load-theme 'solarized t)

(setq-default mode-line-format
	      '(" "
		mode-line-modified " "
		mode-line-buffer-identification "       "
		mode-line-position "       "
		"%[" mode-name "%]"))
(setq column-number-mode t)

(provide 'init-ui)
