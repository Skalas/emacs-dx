
(use-package exec-path-from-shell
  :config
  (progn
    ;; For debugging
    (when nil
      (message "path: %s, setup: %s" (getenv "PATH")
               (getenv "ENVIRONMENT_SETUP_DONE"))
      (setq exec-path-from-shell-debug t))
    (setq exec-path-from-shell-arguments (list "-l"))
    (setq exec-path-from-shell-check-startup-files nil)
    (add-to-list 'exec-path-from-shell-variables "PYTHONPATH")
    (setenv "WORKON_HOME" "~/src/miniconda3/envs")
    (exec-path-from-shell-initialize)))

 
(setq exec-path (cons "/usr/local/bin" exec-path) )
(setenv "WORKON_HOME" "~/src/miniconda3/envs")
