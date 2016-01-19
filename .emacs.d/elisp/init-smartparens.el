;; TODO: paredit vs smartparens
;;       smartparens does not have paredit-wrap-round
;;       http://mumble.net/%7Ecampbell/emacs/paredit.html
;;       https://github.com/Fuco1/smartparens
(require 'smartparens-config)

(setq sp-autoescape-string-quote nil)

(smartparens-global-mode t)

(dolist (hook mkaschenko/lisp-programming-mode-hooks)
  (add-hook hook 'show-smartparens-mode)
  (add-hook hook 'smartparens-strict-mode))

(provide 'init-smartparens)
