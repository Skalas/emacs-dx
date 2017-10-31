(use-package ess
  :ensure t
  :init
  (load "ess-site"))

(use-package polymode
  :ensure t
  :defer t)

(use-package poly-markdown
  :ensure polymode
  :defer t
  )
(use-package poly-markdown
  :ensure polymode
  :init
  (add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))
  )

(use-package poly-markdown
  :ensure polymode
  :init
  (add-to-list 'auto-mode-alist '("\\.Snw" . poly-noweb+r-mode))
  (add-to-list 'auto-mode-alist '("\\.Rnw" . poly-noweb+r-mode))
  (add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
  )

(defun then_R_operator ()
  "R - %>% operator or 'then' pipe operator"
  (interactive)
  (just-one-space 1)
  (insert "%>%")
  (reindent-then-newline-and-indent))
(define-key ess-mode-map (kbd "C-%") 'then_R_operator)
(define-key inferior-ess-mode-map (kbd "C-%") 'then_R_operator)

