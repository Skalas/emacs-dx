; packages.el
(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)


(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)


(require 'cl)
(add-to-list 'package-archives
             '("elpy" . "https://jorgenschaefer.github.io/packages/"))

(use-package auctex
  :defer t
  :ensure t)

(use-package avy
  :ensure t
  :commands avy-goto-word-1 avy-goto-char-1 avy-goto-line avy-goto-char-timer
  :bind (("s-." . avy-goto-word-or-subword-1)
         ("s-," . avy-goto-char)
         ("C-l"     . avy-goto-word-1))
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
  
(package-initialize)
(defvar required-packages
  '(
    f
    s
    ein
    elpy
    flycheck
    yasnippet
    csv-mode
    json-mode
    auto-complete
    window-jump
    exec-path-from-shell
    base16-theme
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
