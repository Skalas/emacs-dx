(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)


;; ; packages.el
;; (require 'package)
;; (setq package-enable-at-startup nil)
;; ;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; ;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;; ;; (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
;; (package-initialize)

;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

;; (eval-when-compile
;;   (require 'use-package))

(use-package diminish
  :ensure t)
(use-package bind-key
  :ensure t)


(use-package cl
  :ensure t)
;; (add-to-list 'package-archives
;;              '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(use-package tex :ensure auctex)

(use-package avy
  :ensure t
  :commands avy-goto-word-1 avy-goto-char-1 avy-goto-line avy-goto-char-timer
  :bind (("s-." . avy-goto-word-or-subword-1)
         ("s-," . avy-goto-char)
         ("C-l"     . avy-goto-word-1))
  )

(use-package sql-indent
  :ensure t)
(use-package f
  :ensure t)
(use-package s
  :ensure t)
(use-package ein
  :ensure t)
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))
(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode))
(use-package auto-complete
  :ensure t
  :config
  (ac-config-default))
(use-package exec-path-from-shell
  :ensure t
  )

(use-package magit-gitflow
  :ensure t
  :after magit
  :disabled
  :init
  (progn
    (add-hook 'magit-mode-hook 'turn-on-magit-gitflow)  ;; Keybing: C-f en la ventana de magit
    ))

(use-package docker :ensure t)
(use-package docker-tramp :ensure t)
(use-package dockerfile-mode :ensure t)


(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))
  

(setq exec-path (cons "/usr/local/bin" exec-path))
   (exec-path-from-shell-copy-env "HOME")
