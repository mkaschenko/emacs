(setq eww-search-prefix "https://duckduckgo.com/html/?kd=-1&q=")

(defun mkaschenko/visit-or-search ()
  (interactive)
  (let ((uri-or-keywords (read-string "Enter URI or keywords: " (thing-at-point 'url))))
    (if (or (string-prefix-p "http://" uri-or-keywords t)
            (string-prefix-p "https://" uri-or-keywords t))
        (browse-url uri-or-keywords)
      (browse-url (concat "https://duckduckgo.com/?q=" (url-hexify-string uri-or-keywords))))))

(global-set-key (kbd "C-c w") 'mkaschenko/visit-or-search)

(provide 'init-browsing)
