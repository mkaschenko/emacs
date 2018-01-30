(package-initialize)

(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'init-ui)
(require 'init-melpa)
(require 'init-programming-mode-hooks)
(require 'init-linum)
(require 'init-flyspell)
(require 'init-ido)
(require 'init-imenu)
(require 'init-ibuffer)
(require 'init-winner)
(require 'init-org)
(require 'init-magit)
(require 'init-shells)
(require 'init-browsers)
(require 'init-projectile)
(require 'init-expand-region)
(require 'init-ag)
(require 'init-smartparens)
(require 'init-ruby)
(require 'init-lisps)
(require 'init-misc)
(require 'init-multiple-cursors)
(require 'init-web-mode)
(require 'init-dash-at-point)
(require 'init-aggressive-indent)
(require 'init-subword)
(require 'init-sql)
(require 'init-restclient)
(require 'init-typescript)
(require 'init-javascript)
(require 'init-dired)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ibuffer-saved-filter-groups
   (quote
    (("Development"
      ("Dired"
       (derived-mode . dired-mode))
      ("Compilations"
       (derived-mode . compilation-mode))
      ("Servers"
       (name . ".*server"))
      ("Magit"
       (derived-mode . magit-mode))))))
 '(ibuffer-saved-filters
   (quote
    (("gnus"
      ((or
        (mode . message-mode)
        (mode . mail-mode)
        (mode . gnus-group-mode)
        (mode . gnus-summary-mode)
        (mode . gnus-article-mode))))
     ("programming"
      ((or
        (mode . emacs-lisp-mode)
        (mode . cperl-mode)
        (mode . c-mode)
        (mode . java-mode)
        (mode . idl-mode)
        (mode . lisp-mode)))))))
 '(package-selected-packages
   (quote
    (robe discover-js2-refactor xref-js2 js2-refactor dired-details indium coverage magit-gh-pulls markdown-mode clojure-cheatsheet ts-comint tide typescript-mode yari yaml-mode web-mode smex smartparens slim-mode rubocop rspec-mode restclient projectile popup magit let-alist inf-ruby idomenu ido-yes-or-no ido-ubiquitous haml-mode gitignore-mode gitconfig-mode gitattributes-mode git-link fuzzy flx-ido expand-region dash-at-point clj-refactor buffer-move aggressive-indent ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
