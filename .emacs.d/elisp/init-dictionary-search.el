(defun mkaschenko/dictionary-search ()
  (interactive)
  (shell-command (concat "open dict://\"" (read-string "Dictionary: " (thing-at-point 'symbol)) "\"")))

(global-set-key (kbd "C-c d") 'mkaschenko/dictionary-search)

(provide 'init-dictionary-search)
