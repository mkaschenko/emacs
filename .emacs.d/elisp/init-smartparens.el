(require 'smartparens-config)
(require 'smartparens-markdown)

(setq sp-autoescape-string-quote nil)

(defun mkaschenko/setup-smartparens-keys ()
  (define-key smartparens-mode-map (kbd "C-M-w") 'sp-copy-sexp)
  (define-key smartparens-mode-map (kbd "C-M-s") 'sp-splice-sexp)
  (define-key smartparens-mode-map (kbd "C-M-r") 'sp-raise-sexp)
  (define-key smartparens-mode-map (kbd "C-c 9") 'sp-backward-barf-sexp)
  (define-key smartparens-mode-map (kbd "C-c 0") 'sp-forward-slurp-sexp))

(add-hook 'smartparens-mode-hook 'mkaschenko/setup-smartparens-keys)

(provide 'init-smartparens)
