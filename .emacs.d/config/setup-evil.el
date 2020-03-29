;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; vim-like keybindings everywhere in emacs
;(use-package evil-collection
;  :after evil
;  :ensure t
;  :config
;  (evil-collection-init))
;(message "Loading evil-mode...done"))

(provide 'setup-evil)
