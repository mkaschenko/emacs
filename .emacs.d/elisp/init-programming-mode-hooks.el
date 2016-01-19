(setq mkaschenko/lisp-programming-mode-hooks
      '(emacs-lisp-mode-hook clojure-mode-hook))

(setq mkaschenko/programming-mode-hooks
      (append mkaschenko/lisp-programming-mode-hooks
	      '(ruby-mode-hook
		haml-mode-hook slim-mode-hook
		js-mode-hook jsx-mode-hook)))

(provide 'init-programming-mode-hooks)
