(use-package projectile
  :ensure t
  :config
  (projectile-mode)
  :bind(
	("C-c C-p" . projectile-keymap-prefix)
	)

  )

(use-package org-projectile
  :bind (("C-c n p" . org-projectile-project-todo-completing-read)
         ("C-c c" . org-capture))
  :after (org)
  :config
  (progn
    (setq org-projectile-projects-file
          "~/projects.org")
    (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
    (push (org-projectile-project-todo-entry) org-capture-templates))
  :ensure t)


(use-package counsel-projectile
  :ensure t
  :after counsel
  :config
  (counsel-projectile-on)
  )
