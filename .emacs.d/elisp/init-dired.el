(require 'dired-details)
(require 'ls-lisp)

(setq-default dired-details-hidden-string "--- ")

(setq dired-auto-revert-buffer t
      dired-dwim-target        t
      dired-listing-switches   "-alh"
      dired-use-ls-dired       nil
      ls-lisp-dirs-first       t
      ls-lisp-use-insert-directory-program nil)

(defun mkaschenko/dired-hide ()
  (dired-mark-files-regexp "^\\.git$\\|^\\.DS_Store$")
  (dired-do-kill-lines)
  (message nil))

(dired-details-install)
(add-hook 'dired-after-readin-hook 'mkaschenko/dired-hide)

(provide 'init-dired)
