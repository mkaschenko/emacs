(defun mkaschenko/setup-sql ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1))

(add-hook 'sql-mode-hook 'mkaschenko/setup-sql)

(defun mkaschenko/setup-interactive-sql ()
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1))

(add-hook 'sql-interactive-mode-hook 'mkaschenko/setup-sql)

(provide 'init-sql)
