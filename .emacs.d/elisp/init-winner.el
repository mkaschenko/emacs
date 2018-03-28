(setq winner-boring-buffers nil)

(global-set-key (kbd "C-x O") 'winner-redo)
(global-set-key (kbd "C-x P") 'previous-buffer)
(global-set-key (kbd "C-x p") 'winner-undo)

(winner-mode +1)

(provide 'init-winner)
