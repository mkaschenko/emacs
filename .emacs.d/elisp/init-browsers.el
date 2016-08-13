(defun mkaschenko/duckduckgo-search (query)
  (interactive "sDuckDuckGo: ")
  (browse-url
   (concat "https://duckduckgo.com/?q=" (replace-regexp-in-string " " "+" query))))

(global-set-key (kbd "C-c w") 'eww)
(global-set-key (kbd "C-c W") 'mkaschenko/duckduckgo-search)

(provide 'init-browsers)
