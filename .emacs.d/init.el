(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'init-ace-jump)
(require 'init-ag)
(require 'init-browsing)
(require 'init-c++)
(require 'init-css)
(require 'init-dash-search)
(require 'init-dictionary-search)
(require 'init-dired)
(require 'init-expand-region)
(require 'init-flyspell)
(require 'init-html)
(require 'init-ibuffer)
(require 'init-ido)
(require 'init-javascript)
(require 'init-lisps)
(require 'init-magit)
(require 'init-misc)
(require 'init-multiple-cursors)
(require 'init-package)
(require 'init-projectile)
(require 'init-restclient)
(require 'init-ruby)
(require 'init-shell-script)
(require 'init-shell)
(require 'init-smartparens)
(require 'init-sql)
(require 'init-text)
(require 'init-theme)
(require 'init-ui)
(require 'init-winner)
;; TODO: (require 'init-emmet) https://github.com/smihica/emmet-mode
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(yari yaml-mode smex smartparens slim-mode rubocop rspec-mode restclient request projectile ox-gfm marshal magit-popup magit ido-yes-or-no ido-ubiquitous gitignore-mode gitconfig-mode gitattributes-mode git-link fuzzy flx-ido expand-region dired-details csv-mode clojure-cheatsheet clj-refactor buffer-move aggressive-indent ag ace-jump-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-added-highlight ((t (:background "#e4e4e4" :foreground "#5f8700")))))
