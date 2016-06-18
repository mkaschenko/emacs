(setq clojure-align-forms-automatically t)

(dolist (hook mkaschenko/lisp-programming-mode-hooks)
  (add-hook hook 'enable-paredit-mode)
  (add-hook hook 'eldoc-mode)
  (add-hook hook 'show-smartparens-mode))

(require 'cider)
(define-key cider-mode-map (kbd "C-M-y") 'flyspell-auto-correct-previous-word)

(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'show-smartparens-mode)
(add-hook 'cider-mode-hook 'cider-auto-test-mode)

(require 'paredit)
(define-key paredit-mode-map (kbd "C-j") 'delete-indentation)
(define-key paredit-mode-map (kbd "C-x j") 'paredit-newline)
(define-key paredit-mode-map (kbd "C-M-w") 'paredit-copy-as-kill)
(define-key paredit-mode-map (kbd "C-c 0") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "C-c 9") 'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "C-c :") 'clojure-toggle-keyword-string)

(provide 'init-lisps)