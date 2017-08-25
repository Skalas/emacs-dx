(use-package elpy
  :commands elpy-enable
  :ensure t
  :init (with-eval-after-load 'python (elpy-enable))
  :config
  (progn
    (setq elpy-rpc-backend "jedi"
          elpy-rpc-project-specific 't)
    (setq python-shell-interpreter (concat (getenv "HOME") "/.pyenv/shims/python"))
    (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
    (add-to-list 'exec-path "$HOME//.pyenv/shims/")
    (when (fboundp 'flycheck-mode)
      (setq elpy-modules (delete 'elpy-module-flymake elpy-modules)))))

(use-package pyenv-mode  :ensure t)
(use-package pyenv-mode-auto :ensure t )
;; enable autopep8 formatting on save
(use-package py-autopep8
  :ensure t
  :config
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
  )



(setq python-shell-prompt-detect-failure-warning nil)
