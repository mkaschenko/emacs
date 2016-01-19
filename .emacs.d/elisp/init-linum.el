(setq linum-format "%3d ")

(dolist (hook mkaschenko/programming-mode-hooks)
  (add-hook hook 'linum-mode))

(provide 'init-linum)
