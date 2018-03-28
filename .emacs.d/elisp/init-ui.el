(menu-bar-mode -1)

(setq-default mode-line-format
	      '(" "
		mode-line-modified " "
		mode-line-buffer-identification "       "
		mode-line-position "       "
		"%[" mode-name "%]"))
(setq column-number-mode t)

(provide 'init-ui)
