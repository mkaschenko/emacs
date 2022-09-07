(setq ace-jump-mode-case-fold nil
      ace-jump-mode-submode-list '(ace-jump-char-mode
                                   ace-jump-line-mode
                                   ace-jump-word-mode))

(global-set-key (kbd "C-c j") 'ace-jump-mode)

(provide 'init-ace-jump)
