(package-initialize)

(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'init-ag)
(require 'init-browsers)
(require 'init-compilation)
(require 'init-css)
(require 'init-dash-at-point)
(require 'init-dired)
(require 'init-expand-region)
(require 'init-flyspell)
(require 'init-html)
(require 'init-ibuffer)
(require 'init-ido)
(require 'init-imenu)
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
(require 'init-shells)
(require 'init-smartparens)
(require 'init-solarized-theme)
(require 'init-sql)
(require 'init-text)
(require 'init-ui)
(require 'init-winner)

;;; TODO: refactor
;; (require 'init-web-mode)
;; (require 'init-javascript)
;; (require 'init-typescript)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yari yaml-mode xref-js2 web-mode ts-comint tide smex smartparens slim-mode rubocop rspec-mode robe restclient projectile markdown-mode magit-gh-pulls indium idomenu ido-yes-or-no ido-ubiquitous haml-mode gitignore-mode gitconfig-mode gitattributes-mode git-link fuzzy flx-ido expand-region discover-js2-refactor dired-details dash-at-point coverage clojure-cheatsheet clj-refactor buffer-move aggressive-indent ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
