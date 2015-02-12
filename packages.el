; packages.el
(require 'cl)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(defvar required-packages
  '(
    magit
    yasnippet
    auto-complete
    org
    window-jump
    jedi
    ess
    multiple-cursors
    base16-theme
    enh-ruby-mode
    rinari
    inf-ruby
    rhtml-mode
    projectile
  ) "a list of packages to ensure are installed at launch.")

; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

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
(require 'nav)
