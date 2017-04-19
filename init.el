
;; Archivo que jalará todo lo demás.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/configs.el")
(load "~/.emacs.d/aliases.el")
(load "~/.emacs.d/themes.el")
(load "~/.emacs.d/org.el")
(load "~/.emacs.d/R.el")
(load "~/.emacs.d/bash.el")
(load "~/.emacs.d/python.el")
(load "~/.emacs.d/sql.el")
;;(load "~/.emacs.d/ruby.el")
(set-face-attribute 'default nil
                :family "Source Code Pro" :height 145 :weight 'normal)
