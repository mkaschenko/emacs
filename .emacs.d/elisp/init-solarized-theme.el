(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized/")

(defun mkaschenko/solarized-light ()
  (interactive)
  (setq frame-background-mode 'light)
  (load-theme 'solarized t nil))

(defun mkaschenko/solarized-dark ()
  (interactive)
  (setq frame-background-mode 'dark)
  (load-theme 'solarized t nil))

(defun mkaschenko/hours (time)
  (string-to-number (format-time-string "%H" time)))

(defun mkaschenko/daytime? (hours)
  (and (>= hours 6) (< hours 20)))

(defun mkaschenko/solarized ()
  (interactive)
  (if (mkaschenko/daytime? (mkaschenko/hours (current-time)))
      (mkaschenko/solarized-light)
    (mkaschenko/solarized-dark)))

(mkaschenko/solarized)

(run-at-time "06:00" (* 24 3600) #'mkaschenko/solarized)
(run-at-time "20:00" (* 24 3600) #'mkaschenko/solarized)

(provide 'init-solarized-theme)
