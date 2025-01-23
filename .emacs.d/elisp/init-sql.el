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

(defun mkaschenko/setup-interactive-sql-keys ()
  (define-key sql-interactive-mode-map (kbd "C-c k") 'mkaschenko/erase-buffer-newline))

(add-hook 'sql-interactive-mode-hook 'mkaschenko/setup-interactive-sql)
(add-hook 'sql-interactive-mode-hook 'mkaschenko/setup-interactive-sql-keys)

(provide 'init-sql)
