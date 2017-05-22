;; Sets up exec-path-from shell
;; https://github.com/purcell/exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs
   '("PATH")))
(require 'tramp)
;; Use ssh instead of scp (faster)
(setq tramp-default-method "ssh")
;; Tramp should use remote PATH ENV var
(add-to-list 'tramp-remote-path 'tramp-own-remote-path)
