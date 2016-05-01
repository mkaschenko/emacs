(require 'smartparens-config)

(setq sp-autoescape-string-quote nil)

(dolist (hook mkaschenko/non-lisp-programming-mode-hooks)
  (add-hook hook 'turn-on-smartparens-mode))

(provide 'init-smartparens)
