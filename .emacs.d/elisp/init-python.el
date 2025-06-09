(defun mkaschenko/setup-python ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'python-mode-hook 'mkaschenko/setup-python)

(provide 'init-python)
