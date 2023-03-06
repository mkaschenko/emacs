(defun mkaschenko/setup-slim ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-mode -1)
  (smartparens-mode +1))

(add-hook 'slim-mode-hook 'mkaschenko/setup-slim)

(provide 'init-slim)
