;; (require 'python-mode)
;; (setenv "IPY_TEST_SIMPLE_PROMPT" "1")
;; (setq-default py-shell-name "/home/skalas/.pyenv/shims/ipython")
;; (setq-default py-which-bufname "IPython")
;; (setq py-python-command-args
;;       '("--gui=wx" "--pylab=wx" "--simple-prompt" "-i"))
;; (setq py-force-py-shell-name-p t)
;; ;; (setq py-shell-switch-buffers-on-execute-p t)
;; ;; (setq py-switch-buffers-on-execute-p t)
;; (setq py-split-windows-on-execute-p t)
;; (setq py-python-command-args '("--colors=linux"))

;;(exec-path-from-shell-copy-env "PATH")

;; PYTHON CONFIGURATION
;; --------------------------------------


(elpy-enable)
(elpy-use-ipython)
(require 'pyenv-mode-auto)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "--simple-prompt --pprint")
;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(add-to-list 'exec-path "$HOME//.pyenv/shims/")
