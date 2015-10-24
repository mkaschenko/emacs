(defun my-eshell-clear-buffer ()
  "Clear the selected Eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input)))

(provide 'my-eshell-clear-buffer)
