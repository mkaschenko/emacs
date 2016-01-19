(setq ispell-dictionary "en_GB")

(add-hook 'text-mode-hook 'flyspell-mode)
(dolist (hook mkaschenko/programming-mode-hooks)
  (add-hook hook 'flyspell-prog-mode))

(provide 'init-flyspell)
