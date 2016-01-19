;; TODO: don't use the hook after the new release
;;       https://github.com/Wilfred/ag.el/issues/99
(setq ag-highlight-search t)

(add-hook 'ag-mode-hook 'toggle-truncate-lines)

(provide 'init-ag)
