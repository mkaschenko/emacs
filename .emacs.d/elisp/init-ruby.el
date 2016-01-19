;; TODO: replace Rubocop by Flycheck (w/o automatic checking)
(setq ruby-insert-encoding-magic-comment nil)
(setq inf-ruby-default-implementation "pry")
(setq projectile-tags-command "ripper-tags -Re -f TAGS")
(setq rspec-autosave-buffer t)

(add-hook 'ruby-mode-hook 'rubocop-mode)

(global-set-key (kbd "C-c i") 'inf-ruby)
(global-set-key (kbd "C-c c") 'inf-ruby-console-auto)
(global-set-key (kbd "C-c v") 'rubocop-check-current-file)
(global-set-key (kbd "C-c d") 'yari)

(provide 'init-ruby)
