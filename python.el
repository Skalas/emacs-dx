(require 'python-mode)
(setenv "IPY_TEST_SIMPLE_PROMPT" "1")
(setq-default py-shell-name "/home/skalas/.pyenv/shims/ipython")
(setq-default py-which-bufname "IPython")
(setq py-python-command-args
      '("--gui=wx" "--pylab=wx" "--simple-prompt" "-i"))
(setq py-force-py-shell-name-p t)
;; (setq py-shell-switch-buffers-on-execute-p t)
;; (setq py-switch-buffers-on-execute-p t)
(setq py-split-windows-on-execute-p t)
(setq py-python-command-args '("--colors=linux"))

