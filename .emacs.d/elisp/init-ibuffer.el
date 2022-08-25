(setq ibuffer-display-summary nil
      ibuffer-formats '((mark " "
                              (name 35 35 :left :elide)
                              "   "
                              (mode 18 18 :left :elide)
                              "   "
                              filename-and-process)
                        (mark " "
                              (name 35 35 :left :elide)
                              "   "
                              (size 9 -1 :left)
                              "   "
                              (mode 18 18 :left :elide)
                              "   "
                              filename-and-process)))

(add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'init-ibuffer)
