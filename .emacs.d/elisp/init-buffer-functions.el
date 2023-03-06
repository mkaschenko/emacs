(defun mkaschenko/erase-buffer ()
  "Erase contents of the current buffer"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun mkaschenko/erase-buffer-newline ()
  "Erase contents of the current buffer and insert a final newline"
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (comint-send-input)))

;;; http://xahlee.info/emacs/emacs/emacs_new_empty_buffer.html
(defun mkaschenko/new-buffer ()
  "Create a new buffer, e.g. “untitled”, “untitled<2>”, “untitled<3>”, etc."
  (interactive)
  (let ((buf (generate-new-buffer "untitled")))
    (switch-to-buffer buf)
    (setq buffer-offer-save t)))

(global-set-key (kbd "<f2>") 'mkaschenko/new-buffer)

(provide 'init-buffer-functions)
