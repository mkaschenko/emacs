(add-to-list 'auto-mode-alist '("\\.ino\\'" . c++-mode))

(defun mkaschenko/setup-c++ ()
  (aggressive-indent-mode +1)
  (flyspell-prog-mode)
  (display-line-numbers-mode +1)
  (show-paren-mode +1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'c++-mode-hook 'mkaschenko/setup-c++)

(provide 'init-c++)
