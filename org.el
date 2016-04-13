(add-to-list 'load-path "~/.emacs.d/paquetes/org-mode/lisp")

(require 'ox-reveal)
(setq org-reveal-root "http://cdn.jsdelivr.net/reveal.js/2.5.0/")
(custom-set-variables
 '(org-babel-load-languages
   (quote (
	   (emacs-lisp . t)
	   (R . t)
	   (python . t)
	   (bash . t)
	   ))
   )
 '(org-confirm-babel-evaluate nil))
