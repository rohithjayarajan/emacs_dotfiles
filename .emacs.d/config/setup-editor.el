(use-package speedbar)
  
(use-package sr-speedbar
  :ensure t
  :init
  (set-variable 'sr-speedbar-right-side nil))

(use-package projectile-speedbar
  :ensure t
  :disabled t)

(make-face 'speedbar-face)
(set-face-font 'speedbar-face "Mono-12")
(setq speedbar-mode-hook '(lambda () (buffer-face-set 'speedbar-face)))

(setq sr-speedbar-width 10)

(add-hook 'emacs-startup-hook (lambda ()
  (sr-speedbar-open)))

(provide 'setup-editor)
