(require 'dash-at-point)

(defun mkaschenko/dash-at-point ()
  (interactive)
  (let ((thing (read-string "dash: " (thing-at-point 'symbol))))
    (apply 'dash-at-point-run-search (split-string thing))))

(global-set-key (kbd "C-c D") 'mkaschenko/dash-at-point)

(provide 'init-dash-at-point)
