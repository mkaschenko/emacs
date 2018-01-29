(setq clojure-align-forms-automatically t)

(setq cljr-warn-on-eval nil)

(setq cider-prompt-save-file-on-load 'always-save
      cider-prompt-for-symbol nil)


(defun mkaschenko/setup-lisp ()
  (enable-paredit-mode)
  (eldoc-mode)
  (show-paren-mode))

(defun mkaschenko/setup-clj-refactor ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1)
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(defun mkaschenko/setup-cider-keys ()
  (define-key cider-mode-map (kbd "C-M-y") 'flyspell-auto-correct-previous-word)
  (define-key cider-mode-map (kbd "C-c M") 'complete-symbol))

;;; http://mumble.net/~campbell/emacs/paredit.html
(defun mkaschenko/setup-paredit-keys ()
  (define-key paredit-mode-map (kbd "C-j") 'delete-indentation)
  (define-key paredit-mode-map (kbd "C-x j") 'paredit-newline)
  (define-key paredit-mode-map (kbd "C-M-w") 'paredit-copy-as-kill)
  (define-key paredit-mode-map (kbd "C-c 0") 'paredit-forward-slurp-sexp)
  (define-key paredit-mode-map (kbd "C-c 9") 'paredit-forward-barf-sexp)
  (define-key paredit-mode-map (kbd "C-c :") 'clojure-toggle-keyword-string))


(global-set-key (kbd "C-c C-z") 'cider-switch-to-repl-buffer)

(dolist (hook mkaschenko/lisp-programming-mode-hooks)
  (add-hook hook 'mkaschenko/setup-lisp))

(add-hook 'clojure-mode-hook 'mkaschenko/setup-clj-refactor)

(add-hook 'cider-mode-hook 'cider-auto-test-mode)
(add-hook 'cider-mode-hook 'mkaschenko/setup-cider-keys)

(add-hook 'cider-repl-mode-hook 'mkaschenko/setup-lisp)

(add-hook 'paredit-mode-hook 'mkaschenko/setup-paredit-keys)

(provide 'init-lisps)
