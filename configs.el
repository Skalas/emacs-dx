(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; Prendemos el autocomplete.

(electric-pair-mode 1)
(require 'iso-transl)
(setq tab-width 4)
(setq inhibit-startup-message t)

;; Configuraciones de paquetes.
(add-to-list 'load-path "~/.emacs.d/emacs-nav-49/")
(setq default-directory "~/github/")
(use-package compile
  :ensure t)
(use-package nav)
;; para que los paréntesis se prendan
(use-package paren
  :ensure t
  :config
  (show-paren-mode t))

(cond
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin:/usr/local/bin/:$HOME/.pyenv/shims"))
  (global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))
  (global-set-key (kbd "M-ñ") '(lambda () (interactive) (insert "~")))
  (global-set-key (kbd "M-º") '(lambda () (interactive) (insert "\\")))
  (global-set-key (kbd "M-2") '(lambda () (interactive) (insert "@")))
  (global-set-key (kbd "M-1") '(lambda () (interactive) (insert "|")))
  (global-set-key (kbd "M-ç") '(lambda () (interactive) (insert "}")))
  (global-set-key (kbd "M-+") '(lambda () (interactive) (insert "]")))
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  (message "Mac OS X")
  ))
 )

(auto-complete-mode t)
(global-auto-complete-mode t)

;; it looks like counsel is a requirement for swiper
(use-package counsel
  :ensure t
  )

(use-package swiper
  :init (ivy-mode 1)
  :ensure t
  :bind (
         ("C-s" . swiper)
         ("C-r" . swiper)
         ("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-c C-r" . ivy-resume)
         ("<f6>" . ivy-resume)
         ("C-c h m" . woman)
         ("C-x b" . ivy-switch-buffer)
         ("C-c u" . swiper-all)
         ("<f1> f" . counsel-describe-function)
         ("<f1> v" . counsel-describe-variable)
         ("<f1> l" . counsel-load-library)
         ("<f2> i" . counsel-info-lookup-symbol)
         ("<f2> u" . counsel-unicode-char)
         ("C-c g" . counsel-git)
         ("C-c j" . counsel-git-grep)
         ("C-c k" . counsel-ag)
         ("C-x l" . counsel-locate)
         ("C-S-o" . counsel-rhythmbox)
         )
  :config
  (setq ivy-use-virtual-buffers t
        ivy-count-format "%d/%d ")
  (setq projectile-completion-system 'ivy)                   ;; Habilitamos ivy en projectile
  (setq magit-completing-read-function 'ivy-completing-read) ;; Habilitamos ivy en magit
  ;; Tomado de scimax
  (ivy-set-actions
   t
   '(("i" (lambda (x) (with-ivy-window
                        (insert x))) "insert candidate")
     (" " (lambda (x) (ivy-resume)) "resume")
     ("?" (lambda (x)
            (interactive)
            (describe-keymap ivy-minibuffer-map)) "Describe keys")))
  ;; ** Acciones para counsel-find-file
  ;; Tomado de scimax
  (ivy-add-actions
   'counsel-find-file
   '(("a" (lambda (x)
            (unless (memq major-mode '(mu4e-compose-mode message-mode))
              (compose-mail))
            (mml-attach-file x)) "Attach to email")
     ("c" (lambda (x) (kill-new (f-relative x))) "Copy relative path")
     ("4" (lambda (x) (find-file-other-window x)) "Open in new window")
     ("5" (lambda (x) (find-file-other-frame x)) "Open in new frame")
     ("C" (lambda (x) (kill-new x)) "Copy absolute path")
     ("d" (lambda (x) (dired x)) "Open in dired")
     ("D" (lambda (x) (delete-file x)) "Delete file")
     ("e" (lambda (x) (shell-command (format "open %s" x)))
      "Open in external program")
     ("f" (lambda (x)
            "Open X in another frame."
            (find-file-other-frame x))
      "Open in new frame")
     ("p" (lambda (path)
            (with-ivy-window
              (insert (f-relative path))))
      "Insert relative path")
     ("P" (lambda (path)
            (with-ivy-window
              (insert path)))
      "Insert absolute path")
     ("l" (lambda (path)
            "Insert org-link with relative path"
            (with-ivy-window
              (insert (format "[[./%s]]" (f-relative path)))))
      "Insert org-link (rel. path)")
     ("L" (lambda (path)
            "Insert org-link with absolute path"
            (with-ivy-window
              (insert (format "[[%s]]" path))))
      "Insert org-link (abs. path)")
     ("r" (lambda (path)
            (rename-file path (read-string "New name: ")))
      "Rename")))
  )

(use-package ivy-hydra
  :ensure t
  )



(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package docker :ensure t)
(use-package docker-tramp :ensure t)
(use-package dockerfile-mode :ensure t)

(use-package csv-mode
  :ensure t
  :mode "\\.[PpTtCc][Ss][Vv]\\'"
  
  :config
  (progn
    (setq csv-separators '("," ";" "|" " " "\t"))
    )
  )

(use-package json-mode
  :ensure t)

;; (use-package nyan-mode
;;   :if window-system
;;   :ensure t
;;   :config
;;   (nyan-mode)
;;   (nyan-start-animation)
;;   )


(use-package git-gutter+
  :diminish
  :defer t
  :config
  (global-git-gutter+-mode)
  )

(dolist (key '("\C-d" "\C-\M-b"))
  (global-unset-key key))

;; Edición de múltiples líneas
(use-package multiple-cursors
  :diminish multiple-cursors-mode
  :defer t
  :init
  (global-set-key (kbd "C-d") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-M-d") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
  )
