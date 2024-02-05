(defun mkaschenko/setup-text-mode ()
  (flyspell-mode +1)
  (show-paren-local-mode -1)
  (subword-mode +1))

(add-hook 'text-mode-hook 'mkaschenko/setup-text-mode)

(provide 'init-text)
