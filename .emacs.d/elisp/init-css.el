(setq css-indent-offset 2)

(defun mkaschenko/setup-css ()
  (aggressive-indent-mode +1)
  (flyspell-prog-mode)
  (linum-mode +1)
  (show-paren-mode +1)
  (smartparens-mode +1))

(add-hook 'css-mode-hook 'mkaschenko/setup-css)

(provide 'init-css)
