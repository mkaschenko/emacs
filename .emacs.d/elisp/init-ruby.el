(setq rspec-autosave-buffer t
      rspec-use-spring-when-possible nil
      ruby-insert-encoding-magic-comment nil)

(defun mkaschenko/setup-ruby-keys ()
  (define-key ruby-mode-map (kbd "C-c C-c") 'inf-ruby-console-auto)
  (define-key ruby-mode-map (kbd "C-c C-v") 'rubocop-autocorrect-current-file)
  (define-key ruby-mode-map (kbd "C-c y") 'yari))

(add-hook 'ruby-mode-hook 'mkaschenko/setup-ruby-keys)

(defun mkaschenko/setup-ruby ()
  (auto-revert-mode +1)
  (eldoc-mode +1)
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-mode +1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'ruby-mode-hook 'mkaschenko/setup-ruby)

(defun mkaschenko/setup-inf-ruby ()
  (show-paren-mode +1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'inf-ruby-mode-hook 'mkaschenko/setup-inf-ruby)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(add-hook 'dired-mode-hook 'rspec-dired-mode)

(provide 'init-ruby)
