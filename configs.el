
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; ido mode (muy útil para la navegación de lo de abajo)
(ido-mode t)
;; Prendemos el autocomplete.

(electric-pair-mode 1)
(require 'iso-transl)
(setq tab-width 4)
(setq inhibit-startup-message t)

;; Configuraciones de paquetes.
(add-to-list 'load-path "~/.emacs.d/emacs-nav-49/")
(setq default-directory "~/github/")
(require 'compile)
(require 'ido)
(require 'multiple-cursors)
(require 'auto-complete)
(require 'nav)
(require 'yasnippet)
;; para que los paréntesis se prendan 
(require 'paren)
(show-paren-mode t)

(yas-global-mode 1)
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))
(global-set-key (kbd "M-ñ") '(lambda () (interactive) (insert "~")))
(global-set-key (kbd "M-º") '(lambda () (interactive) (insert "\\")))
(global-set-key (kbd "M-2") '(lambda () (interactive) (insert "@")))
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(auto-complete-mode t)
(global-auto-complete-mode t)
