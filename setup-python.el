;;; setup-python.el --- Python
;;; Commentary:
;;; Thanks to .... for giving this.
;;; Code:

(use-package elpy
  :ensure t
  :config
  (elpy-enable)
  (pyvenv-activate "~/src/miniconda3")
  (setq
   python-shell-interpreter "python3"
   python-shell-interpreter-args "-i"
   elpy-rpc-python-command "python3"
   elpy-shell-starting-directory 'current-directory
   )
  (delete `elpy-module-django elpy-modules)
  (setenv "WORKON_HOME" "~/src/miniconda3/envs")
  (delete `elpy-module-highlight-indentation elpy-modules))

(use-package py-autopep8
  :ensure t
  :init
  (setq py-autopep8-options '("--max-line-length=150"))
  :config
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))



(provide 'setup-python)
;;; setup-python.el ends here
