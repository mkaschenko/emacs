(setq rspec-autosave-buffer t
      rspec-use-spring-when-possible nil
      ruby-insert-encoding-magic-comment nil)

(defun mkaschenko/setup-ruby ()
  (display-line-numbers-mode +1)
  (flyspell-prog-mode)
  (show-paren-mode -1)
  (smartparens-mode +1)
  (subword-mode +1))

(defun mkaschenko/setup-ruby-keys ()
  (define-key ruby-mode-map (kbd "C-c C-v") 'rubocop-autocorrect-current-file)
  (define-key ruby-mode-map (kbd "C-c y") 'yari))

(add-hook 'ruby-mode-hook 'mkaschenko/setup-ruby)
(add-hook 'ruby-mode-hook 'mkaschenko/setup-ruby-keys)

(defun mkaschenko/setup-inf-ruby ()
  (show-paren-mode -1)
  (smartparens-mode +1)
  (subword-mode +1))

(defun mkaschenko/setup-inf-ruby-keys ()
  (define-key inf-ruby-mode-map (kbd "C-c y") 'yari))

(add-hook 'inf-ruby-mode-hook 'mkaschenko/setup-inf-ruby)
(add-hook 'inf-ruby-mode-hook 'mkaschenko/setup-inf-ruby-keys)

(defun mkaschenko/setup-yari-keys ()
  (define-key yari-mode-map (kbd "C-c y") 'yari))

(add-hook 'yari-mode-hook 'mkaschenko/setup-yari-keys)

(add-hook 'after-init-hook 'inf-ruby-switch-setup)
(add-hook 'dired-mode-hook 'rspec-dired-mode)

(provide 'init-ruby)
