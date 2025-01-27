(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(setq web-mode-markup-indent-offset 2)

(defun mkaschenko/setup-web ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode))

(add-hook 'web-mode-hook 'mkaschenko/setup-web)

(provide 'init-web)
