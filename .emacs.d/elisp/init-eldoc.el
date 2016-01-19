(add-hook 'inf-clojure-mode-hook 'eldoc-mode)
(dolist (hook mkaschenko/lisp-programming-mode-hooks)
  (add-hook hook 'eldoc-mode))

(provide 'init-eldoc)
