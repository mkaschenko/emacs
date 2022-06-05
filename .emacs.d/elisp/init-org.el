;;; unused

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

(setq org-completion-use-ido t
      org-todo-keywords '((sequence "TODO" "STARTED" "|" "DONE"))
      org-todo-keyword-faces '(("TODO" . (:background "pink" :weight bold))
                               ("STARTED" . (:background "khaki" :weight bold))))

(add-hook 'org-mode-hook 'org-indent-mode)

(provide 'init-org)
