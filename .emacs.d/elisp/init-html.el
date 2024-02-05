(defun mkaschenko/setup-html ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1))

(add-hook 'html-mode-hook 'mkaschenko/setup-html)

(provide 'init-html)
