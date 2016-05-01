(defvar mkaschenko/lisp-programming-mode-hooks
  '(emacs-lisp-mode-hook clojure-mode-hook))

(defvar mkaschenko/non-lisp-programming-mode-hooks
  '(ruby-mode-hook haml-mode-hook slim-mode-hook web-mode-hook))

(defvar mkaschenko/programming-mode-hooks
  (append mkaschenko/lisp-programming-mode-hooks
	  mkaschenko/non-lisp-programming-mode-hooks))

(provide 'init-programming-mode-hooks)
