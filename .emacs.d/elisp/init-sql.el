(defun mkaschenko/setup-sql ()
  (flyspell-prog-mode +1)
  (show-paren-mode +1)
  (smartparens-mode +1))

(global-set-key (kbd "C-c q") 'sql-postgres)

(add-hook 'sql-mode-hook 'mkaschenko/setup-sql)
(add-hook 'sql-interactive-mode-hook 'mkaschenko/setup-sql)

(provide 'init-sql)
