(require 'smartparens-config)

(setq sp-autoescape-string-quote nil)

(dolist (hook mkaschenko/non-lisp-programming-mode-hooks)
  (add-hook hook 'turn-on-smartparens-mode))

(add-hook 'text-mode-hook 'turn-on-smartparens-mode)
(add-hook 'sql-mode-hook 'turn-on-smartparens-mode)

(define-key smartparens-mode-map (kbd "C-M-w") 'sp-copy-sexp)

(provide 'init-smartparens)
