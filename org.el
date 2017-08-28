(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")
(use-package cl)
(use-package ox-reveal
	:ensure t)
(setq org-reveal-root "http://cdn.jsdelivr.net/reveal.js/2.5.0/")
(custom-set-variables
 '(org-babel-load-languages
   (quote (
	   (emacs-lisp . t)
	   (R . t)
	   (python . t)
	   (shell . t)
	   ))
   )
 '(org-confirm-babel-evaluate nil))
