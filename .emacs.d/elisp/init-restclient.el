(defun mkaschenko/setup-restclient ()
  (aggressive-indent-mode -1)
  (show-paren-mode +1)
  (smartparens-mode +1))

(add-to-list 'auto-mode-alist '("\\.rc\\'" . restclient-mode))
(add-hook 'restclient-mode-hook 'mkaschenko/setup-restclient)

(provide 'init-restclient)
