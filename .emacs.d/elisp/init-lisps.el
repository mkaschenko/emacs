(setq cider-prompt-for-symbol           nil
      cider-prompt-save-file-on-load    'always-save
      cljr-warn-on-eval                 nil
      clojure-align-forms-automatically t)

(defun mkaschenko/setup-lisp ()
  (aggressive-indent-mode +1)
  (eldoc-mode +1)
  (flyspell-prog-mode)
  (linum-mode +1)
  (paredit-mode +1)
  (show-paren-mode +1))

(defun mkaschenko/setup-clj-refactor ()
  (clj-refactor-mode +1)
  (cljr-add-keybindings-with-prefix "C-c C-m")
  (yas-minor-mode +1))

(defun mkaschenko/setup-cider-keys ()
  (define-key cider-mode-map (kbd "C-M-y") 'flyspell-auto-correct-previous-word)
  (define-key cider-mode-map (kbd "C-c M") 'complete-symbol))

;;; http://mumble.net/~campbell/emacs/paredit.html
(defun mkaschenko/setup-paredit-keys ()
  (define-key paredit-mode-map (kbd "C-M-w") 'paredit-copy-as-kill)
  (define-key paredit-mode-map (kbd "C-c 0") 'paredit-forward-slurp-sexp)
  (define-key paredit-mode-map (kbd "C-c 9") 'paredit-forward-barf-sexp)
  (define-key paredit-mode-map (kbd "C-c :") 'clojure-toggle-keyword-string)
  (define-key paredit-mode-map (kbd "C-x j") 'paredit-newline)
  (define-key paredit-mode-map (kbd "C-c C-j") 'delete-indentation))

;; (global-set-key (kbd "C-c C-z") 'cider-switch-to-repl-buffer)

(add-hook 'cider-mode-hook 'cider-auto-test-mode)
(add-hook 'cider-mode-hook 'mkaschenko/setup-cider-keys)
(add-hook 'cider-repl-mode-hook 'mkaschenko/setup-lisp)

(add-hook 'clojure-mode-hook 'mkaschenko/setup-clj-refactor)
(add-hook 'clojure-mode-hook 'mkaschenko/setup-lisp)

(add-hook 'emacs-lisp-mode-hook 'mkaschenko/setup-lisp)

(add-hook 'paredit-mode-hook 'mkaschenko/setup-paredit-keys)

(provide 'init-lisps)
