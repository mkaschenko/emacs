(defun mkaschenko/setup-text-mode ()
  (flyspell-mode +1)
  (show-paren-mode +1))

(add-hook 'text-mode-hook 'mkaschenko/setup-text-mode)

(provide 'init-text)
