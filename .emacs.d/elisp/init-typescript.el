(setq typescript-indent-level 2)

(defun mkaschenko/setup-typescript ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'typescript-mode-hook 'mkaschenko/setup-typescript)

(provide 'init-typescript)
