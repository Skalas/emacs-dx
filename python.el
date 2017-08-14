(require 'pyenv-mode)
(require 'elpy)
(elpy-enable)
(setenv "WORKON_HOME" "~/.pyenv/versions/)")
(setq elpy-rpc-backend "jedi")
(setq python-shell-interpreter (concat (getenv "HOME") "/.pyenv/shims/python"))
(require 'pyenv-mode-auto)

(pyenv-mode)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(add-to-list 'exec-path "$HOME//.pyenv/shims/")

(setq pyenv-show-active-python-in-modeline nil)
;; (with-eval-after-load 'python
;;   (defun python-shell-completion-native-try ()
;;     "Return non-nil if can trigger native completion."
;;     (let ((python-shell-completion-native-enable t)
;;           (python-shell-completion-native-output-timeout
;;            python-shell-completion-native-try-output-timeout))
;;       (python-shell-completion-native-get-completions
;;        (get-buffer-process (current-buffer))
;;        nil "_"))))

