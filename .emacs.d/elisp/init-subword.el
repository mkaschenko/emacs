(dolist (hook mkaschenko/programming-mode-hooks)
  (add-hook hook 'subword-mode))

(provide 'init-subword)
