(setq js-indent-level 2)

(defun mkaschenko/setup-js ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1)
  (subword-mode +1))

(defun mkaschenko/setup-js-keys ()
  (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl)
  (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-expression)
  (define-key js-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region))

(add-hook 'js-mode-hook 'mkaschenko/setup-js)
(add-hook 'js-mode-hook 'mkaschenko/setup-js-keys)

(defun mkaschenko/setup-json ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'js-json-mode-hook 'mkaschenko/setup-json)

(provide 'init-javascript)
