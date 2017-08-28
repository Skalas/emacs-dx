(defalias 'qrr 'query-replace-regexp)


(use-package window-jump :ensure t)
(defvar my-keys-minor-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "<M-up>") 'window-jump-up) 
    (define-key map (kbd "<M-right>") 'window-jump-right)
    (define-key map (kbd "<M-down>") 'window-jump-down)
    (define-key map (kbd "<M-left>") 'window-jump-left)
    map)
  "my-keys-minor-mode keymap.")
(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  :init-value t
  :lighter " my-keys")
(my-keys-minor-mode 1)
(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))
(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)


;; para comentar regiones en pocas lineas
(global-set-key "\C-x\C-b" 'ibuffer)
(use-package magit
  :ensure t
  :bind
  ( "\C-xg" . magit-status)
  )
;;(global-set-key "\C-xg" 'magit-status)

;; para aumento y decremento de zoom
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; Optional: set up a quick key to toggle nav
(global-set-key [f9] 'nav-toggle)
