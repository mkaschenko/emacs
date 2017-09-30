(setq dired-dwim-target t)

(require 'dired-details)
(setq-default dired-details-hidden-string "--- ")
(dired-details-install)

(provide 'init-dired)
