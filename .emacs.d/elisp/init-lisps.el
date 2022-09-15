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
  (define-key paredit-mode-map (kbd "C-c 9") 'paredit-forward-barf-sexp))

(add-hook 'paredit-mode-hook 'mkaschenko/setup-paredit-keys)

(provide 'init-lisps)
