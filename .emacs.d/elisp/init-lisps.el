(setq cider-prompt-for-symbol nil
      cider-prompt-save-file-on-load 'always-save)

(defun mkaschenko/setup-lisp ()
  (display-line-numbers-mode +1)
  (eldoc-mode +1)
  (flyspell-prog-mode)
  (paredit-mode +1)
  (show-paren-mode +1))

(add-hook 'clojure-mode-hook 'mkaschenko/setup-lisp)
(add-hook 'emacs-lisp-mode-hook 'mkaschenko/setup-lisp)

;;; http://mumble.net/~campbell/emacs/paredit.html
(defun mkaschenko/setup-paredit-keys ()
  (define-key paredit-mode-map (kbd "C-M-w") 'paredit-copy-as-kill)
  (define-key paredit-mode-map (kbd "C-c 0") 'paredit-forward-slurp-sexp)
  (define-key paredit-mode-map (kbd "C-c 9") 'paredit-forward-barf-sexp)
  (define-key paredit-mode-map (kbd "C-c :") 'clojure-toggle-keyword-string)
  (define-key paredit-mode-map (kbd "C-c j") 'paredit-newline)
  (define-key paredit-mode-map (kbd "C-c C-j") 'delete-indentation))

(add-hook 'paredit-mode-hook 'mkaschenko/setup-paredit-keys)

(provide 'init-lisps)

;; (defun mkaschenko/setup-cider-keys ()
;;   (define-key cider-mode-map (kbd "C-M-y") 'flyspell-auto-correct-previous-word)
;;   (define-key cider-mode-map (kbd "C-c M") 'complete-symbol))

;; (add-hook 'cider-mode-hook 'mkaschenko/setup-cider-keys)
