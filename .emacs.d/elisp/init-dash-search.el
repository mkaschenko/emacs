(defun mkaschenko/dash-search ()
  (interactive)
  (shell-command (concat "open dash://" (url-hexify-string (read-string "Dash: " (thing-at-point 'symbol))))))

(provide 'init-dash-search)
