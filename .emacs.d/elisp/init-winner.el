(winner-mode 1)

(global-set-key (kbd "C-x p") 'winner-undo)
(global-set-key (kbd "C-x O") 'winner-redo)

(setq winner-boring-buffers nil)

(provide 'init-winner)
