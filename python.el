(require 'python-mode)

(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
(setq py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)
;; (setq py-shell-switch-buffers-on-execute-p t)
;; (setq py-switch-buffers-on-execute-p t)
(setq py-split-windows-on-execute-p t)
