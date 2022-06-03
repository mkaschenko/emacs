(setq ibuffer-formats '((mark " "
                              (name 35 35 :left :elide)
                              "   "
                              ;; (size 9 -1 :right)
                              ;; " "
                              (mode 18 18 :left :elide)
                              "   "
                              filename-and-process)
                        (mark " "
                              (name 16 -1)
                              " "
                              filename)))

(add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'init-ibuffer)
