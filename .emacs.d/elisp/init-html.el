(defun mkaschenko/setup-html ()
  (aggressive-indent-mode +1)
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-mode +1)
  (smartparens-mode +1))

(add-hook 'html-mode-hook 'mkaschenko/setup-html)

(provide 'init-html)
