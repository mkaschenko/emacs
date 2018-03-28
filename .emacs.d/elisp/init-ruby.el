(setq projectile-tags-command            "ripper-tags -Re -f TAGS"
      rspec-autosave-buffer              t
      ruby-insert-encoding-magic-comment nil)

(defun mkaschenko/setup-ruby-keys ()
  (define-key ruby-mode-map (kbd "C-c C-c") 'inf-ruby-console-auto)
  (define-key ruby-mode-map (kbd "C-c C-i") 'inf-ruby)
  (define-key ruby-mode-map (kbd "C-c C-t") 'coverage-mode)
  (define-key ruby-mode-map (kbd "C-c C-v") 'rubocop-check-current-file)
  (define-key ruby-mode-map (kbd "C-c C-y") 'yari)
  (define-key ruby-mode-map (kbd "C-c V")   'rubocop-autocorrect-current-file))

(defun mkaschenko/setup-ruby ()
  (aggressive-indent-mode +1)
  (flyspell-prog-mode)
  (linum-mode +1)
  (robe-mode +1)
  (show-paren-mode +1)
  (subword-mode +1)
  (mkaschenko/setup-ruby-keys))

(defun mkaschenko/setup-inf-ruby ()
  (show-paren-mode +1)
  (smartparens-mode +1)
  (subword-mode +1))

(add-hook 'ruby-mode-hook 'mkaschenko/setup-ruby)

(add-hook 'inf-ruby-mode-hook 'mkaschenko/setup-inf-ruby)
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(provide 'init-ruby)
