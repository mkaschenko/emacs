(setq js-indent-level 2)

(defun mkaschenko/setup-js ()
  (aggressive-indent-mode +1)
  (flyspell-prog-mode)
  (linum-mode +1)
  (show-paren-mode +1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'js-mode-hook 'mkaschenko/setup-js)

(provide 'init-javascript)
