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

(global-linum-mode 1)
