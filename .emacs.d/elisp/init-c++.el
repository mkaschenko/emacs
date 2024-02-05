(add-to-list 'auto-mode-alist '("\\.ino\\'" . c++-mode))

(defun mkaschenko/setup-c++ ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-local-mode -1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'c++-mode-hook 'mkaschenko/setup-c++)

(provide 'init-c++)
