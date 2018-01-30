(setq ruby-insert-encoding-magic-comment nil)

(setq rspec-autosave-buffer t)

(setq projectile-tags-command "ripper-tags -Re -f TAGS")


(defun mkaschenko/setup-ruby-keys ()
  ;; (define-key ruby-mode-map (kbd "C-c C-i") 'inf-ruby)
  ;; (define-key ruby-mode-map (kbd "C-c C-c") 'inf-ruby-console-auto)
  (define-key ruby-mode-map (kbd "C-c C-c") 'rubocop-check-current-file)
  (define-key ruby-mode-map (kbd "C-c C-v") 'rubocop-autocorrect-current-file)
  ;; (define-key ruby-mode-map (kbd "C-c C-d") 'yari)
  ;; (define-key ruby-mode-map (kbd "C-c C-t") 'coverage-mode)
  )

(defun mkaschenko/setup-ruby ()
  (show-paren-mode +1)
  (robe-mode +1)
  (mkaschenko/setup-ruby-keys))

(defun mkaschenko/setup-inf-ruby ()
  (aggressive-indent-mode -1)
  (show-paren-mode +1)
  (smartparens-mode +1))


(add-hook 'ruby-mode-hook 'mkaschenko/setup-ruby)

(add-hook 'after-init-hook 'inf-ruby-switch-setup)
(add-hook 'inf-ruby-mode-hook 'mkaschenko/setup-inf-ruby)

(provide 'init-ruby)
