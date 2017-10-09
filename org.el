

(use-package htmlize
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
	(sql . t)
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


(setq org-agenda-files '("~/Dropbox/org/"))

(use-package org-bullets
  :ensure t
  :commands (org-bullets-mode)
  :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; (setq org-todo-keywords '((sequence "☛ TODO(t)" "|" "<img draggable="false" class="emoji" alt="✔" src="https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/2714.svg" scale="0"> DONE(d)")
;; (sequence "⚑ WAITING(w)" "|")
;; (sequence "|" "✘ CANCELED(c)")))

(setq org-log-done 'time)
