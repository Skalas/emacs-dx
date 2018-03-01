;; all the icons in emacs!

(if (package-installed-p 'all-the-icons)
  (setq font-install nil)
  (setq font-install t)
  )

(use-package all-the-icons
  :ensure t
  :init
  
  :config
  (use-package all-the-icons-dired
    :ensure t
    :config
    (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
    )
  )

(if font-install
    (all-the-icons-install-fonts t)
  nil
  )

(use-package pretty-mode
  :ensure t
  :config
  (global-pretty-mode t)
  (pretty-deactivate-groups
   '(:equality :ordering :ordering-double :ordering-triple
               :arrows :arrows-twoheaded :punctuation
               :logic :sets))
  (pretty-activate-groups
   '(:sub-and-superscripts :greek :arithmetic-nary :parentheses
                           :types :arrows-tails  :arrows-tails-double
                           :logic :sets :equality :ordering
                           :arrows :arrows-twoheaded ))
  )

(add-hook
 'prog-mode-hook
 (lambda ()
   (setq prettify-symbols-alist
         '(;; Syntax
           ("in" .       #x2208)
           ("not in" .   #x2209)
           ("not" .      #x2757)
           ("return" .   #x27fc)
           ("yield" .    #x27fb)
           ("for" .      #x2200)
           ("function" . ?λ)
           ("<>" . ?≠)
           ("!=" . ?≠)
           ("exists" . ?Ǝ)
           ("in" . ?∈)
           ("sum" . ?Ʃ)
           ("complex numbers" . ?ℂ)
           ("integer numbers" . ?ℤ)
           ("natural numbers" . ?ℕ)
           ;; Base Types
           ("int" .      #x2124)
           ("float" .    #x211d)
           ("str" .      #x1d54a)
           ("True" .     #x1d54b)
           ("False" .    #x1d53d)
           ;; python
           ("Dict" .     #x1d507)
           ("List" .     #x2112)
           ("Tuple" .    #x2a02)
           ("Set" .      #x2126)
           ("Iterable" . #x1d50a)
           ("Any" .      #x2754)
           ("Union" .    #x22c3)))))
(global-prettify-symbols-mode t)

(setq default-frame-alist '((font . "Source Code Pro-11")))




(use-package doom-themes
  :ensure t
  :init
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-one t)
  (doom-themes-neotree-config)
  (doom-themes-org-config)
  (doom-themes-visual-bell-config)

  )
;; (use-package spaceline-config
;;   :ensure spaceline
;; )
;; 

;; (use-package spaceline-all-the-icons 
;;   :after spaceline
;;   :config (spaceline-all-the-icons-theme))

;; (use-package base16-theme
;;   :ensure t
;;   :init 
;;   (load-theme 'base16-ocean t)
;;   )

(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

