(defun mkaschenko/setup-haml ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode))

(add-hook 'haml-mode-hook 'mkaschenko/setup-haml)

(provide 'init-haml)
