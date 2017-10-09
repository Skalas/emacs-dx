
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
    (add-to-list 'exec-path-from-shell-variables "CC_APP_ID")
    (add-to-list 'exec-path-from-shell-variables "CC_APP_SECRET")
    (add-to-list 'exec-path-from-shell-variables "CC_FB_EXCHANGE_TOKEN")
    (add-to-list 'exec-path-from-shell-variables "PG_USR")
    (add-to-list 'exec-path-from-shell-variables "PG_HOST")
    (add-to-list 'exec-path-from-shell-variables "PG_PROD")
    (add-to-list 'exec-path-from-shell-variables "PG_PASS")
    (add-to-list 'exec-path-from-shell-variables "PG_DB")
    (add-to-list 'exec-path-from-shell-variables "GC_JSON")
    (add-to-list 'exec-path-from-shell-variables "AWS_ACCESS_KEY_ID")
    (add-to-list 'exec-path-from-shell-variables "AWS_SECRET_ACCESS_KEY")
    (add-to-list 'exec-path-from-shell-variables "CT_TOKEN")
    (add-to-list 'exec-path-from-shell-variables "HOME")
    (exec-path-from-shell-initialize)))

 
(setq exec-path (cons "/usr/local/bin" exec-path) )
