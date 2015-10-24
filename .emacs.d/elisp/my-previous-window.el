(defun my-previous-window (count)
  "Select the previous window in cyclic ordering of windows."
  (interactive "p")
  (other-window (- count)))

(provide 'my-previous-window)
