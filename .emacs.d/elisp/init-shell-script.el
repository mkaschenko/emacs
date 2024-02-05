(defun mkaschenko/setup-sh ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1))

(add-hook 'sh-mode-hook 'mkaschenko/setup-sh)

(provide 'init-shell-script)
