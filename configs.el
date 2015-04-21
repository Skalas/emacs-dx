(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; ido mode (muy útil para la navegación de lo de abajo)
(ido-mode t)
;; Prendemos el autocomplete.
(auto-complete-mode t)
(global-auto-complete-mode t)
(electric-pair-mode 1)
(require 'iso-transl)

(setq tab-width 4)
(setq inhibit-startup-message t)
(global-linum-mode 1)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; Optional: set up a quick key to toggle nav
(global-set-key [f9] 'nav-toggle)
;; Configuraciones de paquetes.

(require 'ido)
(require 'multiple-cursors)
(require 'auto-complete)
(require 'ess)
(load "ess-site")
(require 'yasnippet)
(require 'projectile)
(require 'rinari)
(require 'inf-ruby)
(require 'compile)
(require 'enh-ruby-mode)
(add-to-list 'load-path "~/.emacs.d/emacs-nav-49/")
(add-to-list 'load-path "~/.emacs.d/paquetes/org-mode/lisp")
(require 'nav)
(require 'ox-reveal)
(setq org-reveal-root "http://cdn.jsdelivr.net/reveal.js/2.5.0/")

(require 'helm-config)
