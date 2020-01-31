;;; setup-python.el --- Python
;;; Commentary:
;;; Thanks to .... for giving this.
;;; Code:

(use-package elpy
  :ensure t
  :config
  (elpy-enable)
  (pyvenv-activate "~/src/anaconda3")
  (elpy-rpc-python-command "python3")
  (delete `elpy-module-django elpy-modules)
  (delete `elpy-module-highlight-indentation elpy-modules))

(use-package py-autopep8
  :ensure t
  :init
  (setq py-autopep8-options '("--max-line-length=150"))
  :config
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

(setenv "WORKON_HOME" "~/src/anaconda3/envs")

(provide 'setup-python)
;;; setup-python.el ends here
