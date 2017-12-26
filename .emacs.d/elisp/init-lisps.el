(setq clojure-align-forms-automatically t)

(defun mkaschenko/setup-lisp ()
  (enable-paredit-mode)
  (eldoc-mode)
  (show-paren-mode))

(dolist (hook mkaschenko/lisp-programming-mode-hooks)
  (add-hook hook 'mkaschenko/setup-lisp))

(defun mkaschenko/setup-clj-refactor ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1)
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook 'mkaschenko/setup-clj-refactor)

(setq cljr-warn-on-eval nil)

(require 'cider)
(define-key cider-mode-map (kbd "C-M-y") 'flyspell-auto-correct-previous-word)
(define-key cider-mode-map (kbd "C-c M") 'complete-symbol)

(add-hook 'cider-repl-mode-hook 'mkaschenko/setup-lisp)
(add-hook 'cider-mode-hook 'cider-auto-test-mode)

(setq cider-prompt-save-file-on-load 'always-save
      cider-prompt-for-symbol nil)

;;; http://mumble.net/~campbell/emacs/paredit.html
(require 'paredit)
(define-key paredit-mode-map (kbd "C-j") 'delete-indentation)
(define-key paredit-mode-map (kbd "C-x j") 'paredit-newline)
(define-key paredit-mode-map (kbd "C-M-w") 'paredit-copy-as-kill)
(define-key paredit-mode-map (kbd "C-c 0") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "C-c 9") 'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "C-c :") 'clojure-toggle-keyword-string)

(provide 'init-lisps)
