

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/configs.el")
(load "~/.emacs.d/themes.el")
(load "~/.emacs.d/R.el")
(load "~/.emacs.d/bash.el")
(load "~/.emacs.d/python.el")
(load "~/.emacs.d/sql.el")
(load "~/.emacs.d/aliases.el")
(load "~/.emacs.d/projectile.el")
;;(load "~/.emacs.d/ruby.el")
(load "~/.emacs.d/pretty.el")
(load "~/.emacs.d/org.el")
(load "~/.emacs.d/env_vars.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (spaceline spaceline-config window-jump use-package sql-indent sane-term rhtml-mode pyenv-mode-auto py-autopep8 pretty-mode polymode ox-reveal org-projectile org-plus-contrib org-bullets org-beautify-theme nyan-mode nav multiple-cursors markdown-mode magit ivy-hydra htmlize git-gutter+ flycheck exec-path-from-shell ess elscreen elpy ein dockerfile-mode docker dashboard csv-nav csv-mode counsel-projectile base16-theme avy auctex all-the-icons-dired))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
