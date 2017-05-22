;; Enable elpy
(elpy-enable)

;; Use flycheck instead of flymake for elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Automatic PEP8 on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Use ipython in elpy
(elpy-use-ipython)
