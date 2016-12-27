(setq ruby-insert-encoding-magic-comment nil)
(setq inf-ruby-default-implementation "pry")
(setq projectile-tags-command "ripper-tags -Re -f TAGS")
(setq rspec-autosave-buffer t)

(add-hook 'after-init-hook 'inf-ruby-switch-setup)
(add-hook 'inf-ruby-mode-hook 'turn-on-smartparens-mode)

;; (global-set-key (kbd "C-c i") 'inf-ruby)
;; (global-set-key (kbd "C-c c") 'inf-ruby-console-auto)
;; (global-set-key (kbd "C-c v") 'rubocop-check-current-file)
;; (global-set-key (kbd "C-c V") 'rubocop-autocorrect-current-file)
;; (global-set-key (kbd "C-c d") 'yari)

(provide 'init-ruby)
