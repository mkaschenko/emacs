(require 'shell)

(setq eww-search-prefix "https://duckduckgo.com/html/?kd=-1&q=")

(defun mkaschenko/visit-or-search (uri-or-keywords)
  (interactive "sEnter URI or keywords: ")
  (if (string-prefix-p "http" uri-or-keywords t)
      (browse-url uri-or-keywords)
    (browse-url (concat "https://duckduckgo.com/?q=" (url-hexify-string uri-or-keywords)))))

(define-key shell-mode-map (kbd "C-c C-w") nil)

(global-set-key (kbd "C-c w") 'mkaschenko/visit-or-search)
(global-set-key (kbd "C-c C-w") 'browse-url-at-point)

(provide 'init-browsers)
