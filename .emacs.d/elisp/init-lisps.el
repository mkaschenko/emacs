(setq clojure-align-forms-automatically t)

(dolist (hook mkaschenko/lisp-programming-mode-hooks)
  (add-hook hook 'enable-paredit-mode)
  (add-hook hook 'eldoc-mode))

(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'eldoc-mode)
(add-hook 'cider-mode-hook 'cider-auto-test-mode)

(require 'paredit)
(define-key paredit-mode-map (kbd "C-j") 'delete-indentation)

(provide 'init-lisps)
