(use-package htmlize
  :ensure t)

(use-package org-beautify-theme
  :ensure t)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(use-package org
  :ensure org-plus-contrib
  :mode ("\\.org\\'" . org-mode)
  :config
  (progn
    ;; Org-babel
    ;; No preguntar para confirmar la evaluación
    (setq org-confirm-babel-evaluate nil)

     (org-babel-do-load-languages
      'org-babel-load-languages
      '(
	(emacs-lisp . t)
	(R . t)
	(python . t)
	(shell . t)
	))
      ) ;; Fin de progn
  :pin org
  )  ;; Fin de use-package org

(use-package ox-reveal
  :ensure t
  :config (progn
	(require 'ox-reveal)
	(setq org-reveal-root "http://cdn.jsdelivr.net/reveal.js/2.5.0/"))
  )

