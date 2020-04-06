(setq projectile-create-missing-test-files t)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'init-projectile)
