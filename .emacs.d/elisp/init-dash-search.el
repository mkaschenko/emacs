(defun mkaschenko/dash-search (query)
  (interactive "sDash: ")
  (shell-command (concat "open dash://" (url-hexify-string query))))

(provide 'init-dash-search)
