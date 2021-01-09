(require 'org)
(require 'paredit)

(setq ace-jump-mode-case-fold nil)

(define-key lisp-interaction-mode-map (kbd "C-j") nil)
(define-key org-mode-map (kbd "C-j") nil)
(define-key paredit-mode-map (kbd "C-j") nil)

(global-set-key (kbd "C-j") 'ace-jump-char-mode)

(provide 'init-ace-jump)
