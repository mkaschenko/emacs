(dolist (hook mkaschenko/lisp-programming-mode-hooks)
  (add-hook hook 'eldoc-mode))

(add-hook 'cider-repl-mode-hook 'eldoc-mode)

(provide 'init-eldoc)
