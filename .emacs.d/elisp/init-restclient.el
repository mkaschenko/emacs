(add-to-list 'auto-mode-alist '("\\.rc\\'" . restclient-mode))

(defun mkaschenko/setup-restclient ()
  (show-paren-local-mode -1)
  (smartparens-mode +1))

(add-hook 'restclient-mode-hook 'mkaschenko/setup-restclient)

(provide 'init-restclient)
