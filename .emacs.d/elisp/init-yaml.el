(defun mkaschenko/setup-yaml ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode))

(add-hook 'yaml-mode-hook 'mkaschenko/setup-yaml)

(provide 'init-yaml)
