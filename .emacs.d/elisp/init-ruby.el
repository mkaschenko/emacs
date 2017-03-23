(setq ruby-insert-encoding-magic-comment nil)
(setq inf-ruby-default-implementation "pry")
(setq projectile-tags-command "ripper-tags -Re -f TAGS")
(setq rspec-autosave-buffer t)

(add-hook 'after-init-hook 'inf-ruby-switch-setup)
(add-hook 'inf-ruby-mode-hook 'turn-on-smartparens-mode)

(require 'ruby-mode)
(define-key ruby-mode-map (kbd "C-c i") 'inf-ruby)
(define-key ruby-mode-map (kbd "C-c c") 'inf-ruby-console-auto)
(define-key ruby-mode-map (kbd "C-c v") 'rubocop-check-current-file)
(define-key ruby-mode-map (kbd "C-c V") 'rubocop-autocorrect-current-file)
(define-key ruby-mode-map (kbd "C-c d") 'yari)

(provide 'init-ruby)
