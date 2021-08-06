(defun mkaschenko/dash-search (query)
  (interactive "sDash: ")
  (shell-command (concat "open dash://" (url-hexify-string query))))

(global-set-key (kbd "C-c D") 'mkaschenko/dash-search)

(provide 'init-dash-search)
