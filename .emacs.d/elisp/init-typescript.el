(defun mkaschenko/setup-typescript ()
  (interactive)
  (setq indent-tabs-mode nil
	web-mode-attr-indent-offset 2
	typescript-indent-level 2
	flycheck-check-syntax-automatically '(save mode-enabled))
  (flycheck-mode +1)
  (eldoc-mode +1)
  (smartparens-mode +1)
  (show-paren-mode +1)
  (linum-mode +1)
  (subword-mode +1)
  (tide-setup))

(add-hook 'typescript-mode-hook 'mkaschenko/setup-typescript)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (mkaschenko/setup-typescript))))

(require 'ts-comint)
(add-hook 'typescript-mode-hook
          (lambda ()
            (local-set-key (kbd "C-x C-e") 'ts-send-last-sexp)
            (local-set-key (kbd "C-c C-b") 'ts-send-buffer)))

(provide 'init-typescript)
