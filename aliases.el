(defalias 'qrr 'query-replace-regexp)

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
