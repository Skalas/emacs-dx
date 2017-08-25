(defalias 'qrr 'query-replace-regexp)

(use-package window-jump
  :ensure t
  :bind(
	("<M-up>" . window-jump-up)
	("<M-right>" . window-jump-right)
	("<M-down>" . window-jump-down)
	("<M-left>" . window-jump-left)
	)
  )

;; (defvar my-keys-minor-mode-map
;;   (let ((map (make-sparse-keymap)))
;;     (define-key map (kbd "<M-up>") 'window-jump-up) 
;;     (define-key map (kbd "<M-right>") 'window-jump-right)
;;     (define-key map (kbd "<M-down>") 'window-jump-down)
;;     (define-key map (kbd "<M-left>") 'window-jump-left)
;;     map)
;;   "my-keys-minor-mode keymap.")

;; (define-minor-mode my-keys-minor-mode
;;   "A minor mode so that my key settings override annoying major modes."
;;   :init-value t
;;   :lighter " my-keys")


;; (my-keys-minor-mode 1)

(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))

(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

;; para comentar regiones en pocas lineas
(global-set-key "\C-x\C-b" 'ibuffer)
(global-set-key "\C-xg" 'magit-status)

(global-set-key (kbd "<M-up>") 'window-jump-up) 
(global-set-key (kbd "<M-right>") 'window-jump-right)
(global-set-key (kbd "<M-down>") 'window-jump-down)
(global-set-key (kbd "<M-left>") 'window-jump-left)
;; para aumento y decremento de zoom
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; Optional: set up a quick key to toggle nav
(global-set-key [f9] 'nav-toggle)
