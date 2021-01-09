(setq ibuffer-default-sorting-mode 'filename/process)

(defun mkaschenko/ibuffer-jump-to-last-buffer ()
  (ibuffer-jump-to-buffer (buffer-name (cadr (buffer-list)))))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(add-hook 'ibuffer-hook 'mkaschenko/ibuffer-jump-to-last-buffer)
(add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)

(provide 'init-ibuffer)
