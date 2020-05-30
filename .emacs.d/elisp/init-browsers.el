(setq eww-search-prefix "https://duckduckgo.com/html/?kd=-1&q=")

(defun mkaschenko/duckduckgo-search (query)
  (interactive "sDuckDuckGo: ")
  (browse-url
   (concat "https://duckduckgo.com/?q=" (replace-regexp-in-string " " "+" query))))

(global-set-key (kbd "C-c W") 'browse-url)
(global-set-key (kbd "C-c w") 'mkaschenko/duckduckgo-search)

(provide 'init-browsers)
