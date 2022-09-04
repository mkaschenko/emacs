(setq css-indent-offset 2)

(defun mkaschenko/setup-css ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-mode +1)
  (smartparens-mode +1))

(add-hook 'css-mode-hook 'mkaschenko/setup-css)

(provide 'init-css)
