(defun mkaschenko/duckduckgo-search (query)
  (interactive "sDuckDuckGo: ")
  (browse-url
   (concat "https://duckduckgo.com/?q="
	   (replace-regexp-in-string " " "+" (let ((bang (substring query 0 2))
						   (rest (substring query 2)))
					       (if (string= bang "!c")
						   (concat "!clojure" rest)
						 query))))))

(global-set-key (kbd "C-c w") 'eww)
(global-set-key (kbd "C-c W") 'mkaschenko/duckduckgo-search)

(provide 'init-browsers)
