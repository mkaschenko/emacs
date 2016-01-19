(setq org-completion-use-ido t)
(setq
 org-todo-keywords
 '((sequence "TODO" "STARTED" "|" "DONE"))
 org-todo-keyword-faces
 '(("TODO" . (:background "pink" :weight bold))
   ("STARTED" . (:background "khaki" :weight bold))))

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
(add-hook 'org-mode-hook 'org-indent-mode)

(provide 'init-org)
