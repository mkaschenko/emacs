(defun mkaschenko/setup-restclient ()
  (smartparens-mode +1)
  (show-smartparens-mode +1)
  (aggressive-indent-mode -1))

(add-to-list 'auto-mode-alist '("\\.rc\\'" . restclient-mode))
(add-hook 'restclient-mode-hook 'mkaschenko/setup-restclient)

(provide 'init-restclient)
