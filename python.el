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

;;(setenv "IPY_TEST_SIMPLE_PROMPT" "1")
(elpy-enable)
;;(elpy-use-ipython)
(require 'pyenv-mode-auto)
;; (setq python-shell-interpreter "ipython"
;;       python-shell-interpreter-args "--gui=wx --pylab=wx --simple-prompt -i")
;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(add-to-list 'exec-path "$HOME//.pyenv/shims/")

(with-eval-after-load 'python
  (defun python-shell-completion-native-try ()
    "Return non-nil if can trigger native completion."
    (let ((python-shell-completion-native-enable t)
          (python-shell-completion-native-output-timeout
           python-shell-completion-native-try-output-timeout))
      (python-shell-completion-native-get-completions
       (get-buffer-process (current-buffer))
       nil "_"))))
