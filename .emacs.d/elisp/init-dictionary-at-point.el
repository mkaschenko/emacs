(defun mkaschenko/dictionary-at-point ()
  (interactive)
  (let ((query (read-string "Dictionary: " (thing-at-point 'symbol))))
    (shell-command (concat "open dict://" "\"" query "\""))))

(global-set-key (kbd "C-c d") 'mkaschenko/dictionary-at-point)

(provide 'init-dictionary-at-point)
