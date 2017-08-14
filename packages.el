; packages.el
(require 'cl)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(package-initialize)
(defvar required-packages
  '(
    f
    s
    ein
    elpy
    flycheck
    py-autopep8
    magit
    pyenv-mode
    pyenv-mode-auto
    yasnippet
    csv-mode
    json-mode
    auctex
    auto-complete
    window-jump
    ess
    multiple-cursors
    exec-path-from-shell
    base16-theme
    markdown-mode
    polymode
    docker
    dockerfile-mode
    rhtml-mode
    projectile
    org
    ox-reveal
    sql-indent
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
