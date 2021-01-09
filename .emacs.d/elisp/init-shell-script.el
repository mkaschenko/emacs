(defun mkaschenko/setup-sh ()
  (aggressive-indent-mode +1)
  (flyspell-prog-mode)
  (linum-mode +1)
  (show-paren-mode +1)
  (smartparens-mode +1))

(add-hook 'sh-mode-hook 'mkaschenko/setup-sh)

(provide 'init-shell-script)
