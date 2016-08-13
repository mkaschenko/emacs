(global-set-key (kbd "C-c q") 'sql-postgres)

(add-hook 'sql-mode-hook 'turn-off-aggressive-indent-mode)

(provide 'init-sql)
