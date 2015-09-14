;; melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; menu-bar
(menu-bar-mode -1)

;; line numbers
(setq linum-format "%3d ")

;; theme
(add-to-list 'custom-theme-load-path
	     "~/.emacs.d/themes/emacs-color-theme-solarized/")
(load-theme 'solarized t)

;; mode line
(setq-default mode-line-format
	      (quote
	       ("%e" " "
		mode-line-modified " "
		mode-line-buffer-identification "       "
		mode-line-position "       "
		"%[%m%]")))
(setq line-number-mode nil)

;; browser
(global-set-key (kbd "C-c w") 'browse-web)

;; auto-complete
(global-auto-complete-mode t)
(setq ac-ignore-case nil)
(ac-flyspell-workaround)

;; flyspell
(setq ispell-dictionary "en_GB")

;; projectile
(projectile-global-mode t)

;; ido
(require 'ido)
(ido-mode t)
(ido-everywhere t)

;; ido-ubiquitous
(require 'ido-ubiquitous)
(ido-ubiquitous-mode t)

;; idomenu
(global-set-key (kbd "C-c m") 'idomenu)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; fuzzy matching for ido
(flx-ido-mode t)

;; smartparens
(require 'smartparens-config)
(smartparens-global-mode t)
(setq sp-autoescape-string-quote nil)

;; magit
(setq magit-completing-read-function 'magit-ido-completing-read)
(setq magit-fetch-arguments (quote ("--prune")))
(setq magit-pull-arguments (quote ("--rebase")))
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c b") 'magit-blame)

;; yari
(global-set-key (kbd "C-c d") 'yari)

;; inf-ruby
(global-set-key (kbd "C-c i") 'inf-ruby)
(global-set-key (kbd "C-c c") 'inf-ruby-console-rails)

;; rubocop
(global-set-key (kbd "C-c r") 'rubocop-check-current-file)

;; shell
(global-set-key (kbd "C-c s") 'eshell)

;; org mode
(setq org-completion-use-ido t)
(setq
 org-todo-keywords
 '((sequence "TODO" "STARTED" "|" "DONE"))
 org-todo-keyword-faces
 '(("TODO" . (:background "pink" :weight bold))
   ("STARTED" . (:background "khaki" :weight bold))))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

;; ruby mode
(setq ruby-insert-encoding-magic-comment nil)
(add-hook 'ruby-mode-hook 'linum-mode)
(add-hook 'ruby-mode-hook 'flyspell-prog-mode)
(add-hook 'ruby-mode-hook 'rubocop-mode)

;; emacs-lisp mode
(add-hook 'emacs-lisp-mode-hook 'linum-mode)
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode)
(add-hook 'emacs-lisp-mode-hook 'show-smartparens-mode)

;; text mode
(add-hook 'text-mode-hook 'auto-complete-mode)
(add-hook 'text-mode-hook 'flyspell-mode)

;; white-spaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)
