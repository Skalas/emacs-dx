(defalias 'qrr 'query-replace-regexp)

;; para comentar regiones en pocas lineas
(global-set-key "\C-x\C-b" 'ibuffer)
(global-set-key "\C-xg" 'magit-status)	
(global-set-key (kbd "<S-M-up>") 'window-jump-up) 
(global-set-key (kbd "<S-M-right>") 'window-jump-right)
(global-set-key (kbd "<S-M-down>") 'window-jump-down)
(global-set-key (kbd "<S-M-left>") 'window-jump-left)
;; para aumento y decremento de zoom
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)
