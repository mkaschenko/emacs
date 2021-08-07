(require 'ace-jump-mode)
(require 'magit)
(require 'org)
(require 'paredit)

(setq ace-jump-mode-case-fold    nil
      ace-jump-mode-submode-list '(ace-jump-char-mode
                                   ace-jump-line-mode
                                   ace-jump-word-mode))

(define-key lisp-interaction-mode-map (kbd "C-j") nil)

(define-key magit-file-section-map (kbd "C-j") nil)
(define-key magit-diff-section-base-map (kbd "C-j") nil)

(define-key org-mode-map (kbd "C-j") nil)

(define-key paredit-mode-map (kbd "C-j") nil)

(global-set-key (kbd "C-j") 'ace-jump-mode)

(provide 'init-ace-jump)
