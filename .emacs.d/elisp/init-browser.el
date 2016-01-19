(defun mkaschenko/duckduckgo-search (query)
  (interactive "sDuckDuckGo: ")
  (browse-url
   (concat "https://duckduckgo.com/?q=" (replace-regexp-in-string " " "+" query))))

(global-set-key (kbd "C-c w") 'mkaschenko/duckduckgo-search)

(provide 'init-browser)
