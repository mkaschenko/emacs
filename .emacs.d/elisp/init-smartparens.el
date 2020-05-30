(require 'smartparens-config)
(require 'smartparens-markdown)

(setq sp-autoescape-string-quote nil)

(defun mkaschenko/setup-smartparens-keys ()
  (define-key smartparens-mode-map (kbd "C-M-w") 'sp-copy-sexp))

(add-hook 'smartparens-mode-hook 'mkaschenko/setup-smartparens-keys)

(provide 'init-smartparens)
