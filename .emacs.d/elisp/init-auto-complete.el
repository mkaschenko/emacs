(setq ac-ignore-case nil)

(global-auto-complete-mode t)
(ac-flyspell-workaround)

(add-hook 'text-mode-hook 'auto-complete-mode)
(dolist (hook mkaschenko/programming-mode-hooks)
  (add-hook hook 'auto-complete-mode))

(provide 'init-auto-complete)
