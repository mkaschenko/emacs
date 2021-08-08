(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'init-ace-jump)
(require 'init-ag)
(require 'init-browsing)
(require 'init-c++)
(require 'init-compilation)
(require 'init-css)
(require 'init-dash-search)
(require 'init-dictionary-at-point)
(require 'init-dired)
(require 'init-expand-region)
(require 'init-flyspell)
(require 'init-html)
(require 'init-ibuffer)
(require 'init-ido)
(require 'init-imenu)
(require 'init-javascript)
(require 'init-linum)
(require 'init-lisps)
(require 'init-magit)
(require 'init-misc)
(require 'init-multiple-cursors)
(require 'init-org)
(require 'init-package)
(require 'init-projectile)
(require 'init-restclient)
(require 'init-ruby)
(require 'init-shell-script)
(require 'init-shells)
(require 'init-smartparens)
(require 'init-solarized-theme)
(require 'init-sql)
(require 'init-text)
(require 'init-ui)
(require 'init-winner)

;; TODO: (require 'init-emmet) https://github.com/smihica/emmet-mode

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(smartparens dash markdown-mode robe rubocop ace-jump-mode inf-ruby emmet-mode magit magit-popup ox-gfm marshal rspec-mode yari yaml-mode smex restclient projectile idomenu ido-yes-or-no ido-ubiquitous gitignore-mode gitconfig-mode gitattributes-mode git-link fuzzy flx-ido expand-region dired-details dash-at-point csv-mode clojure-cheatsheet clj-refactor buffer-move aggressive-indent ag)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
