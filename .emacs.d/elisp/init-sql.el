(global-set-key (kbd "C-c q") 'sql-postgres)

(defun mkaschenko/setup-sql ()
  (interactive)
  (smartparens-mode +1)
  (show-smartparens-mode +1)
  (aggressive-indent-mode -1)
  (flyspell-prog-mode))

(dolist (hook '(sql-mode-hook sql-interactive-mode-hook))
  (add-hook hook 'mkaschenko/setup-sql))

(provide 'init-sql)
