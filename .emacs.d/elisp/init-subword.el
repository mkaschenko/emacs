(dolist (hook mkaschenko/programming-mode-hooks)
  (add-hook hook 'subword-mode))

(add-hook 'inf-ruby-mode-hook 'subword-mode)

(provide 'init-subword)
