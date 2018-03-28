(require 'dired-details)

(setq-default dired-details-hidden-string "--- ")

(setq dired-dwim-target  t
      dired-use-ls-dired nil)

(dired-details-install)

(provide 'init-dired)
