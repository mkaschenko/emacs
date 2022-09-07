(defun mkaschenko/dictionary-search (query)
  (interactive "sDictionary: ")
  (shell-command (concat "open dict://\"" query "\"")))

(global-set-key (kbd "C-c d") 'mkaschenko/dictionary-search)

(provide 'init-dictionary-search)
