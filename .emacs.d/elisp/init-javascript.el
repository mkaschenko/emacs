(setq js-indent-level 2)

(defun mkaschenko/setup-js ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-mode +1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'js-mode-hook 'mkaschenko/setup-js)

(defun mkaschenko/setup-json ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'js-json-mode-hook 'mkaschenko/setup-json)

(provide 'init-javascript)
