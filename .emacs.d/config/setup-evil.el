(use-package evil
  :ensure t
  :defer .1 ;; don't block emacs when starting, load evil immediately after startup
  :init
  (setq evil-want-integration nil) ;; required by evil-collection
  (setq evil-search-module 'evil-search)
  (setq evil-ex-complete-emacs-commands nil)
  (setq evil-vsplit-window-right t) ;; like vim's 'splitright'
  (setq evil-split-window-below t) ;; like vim's 'splitbelow'
  (setq evil-shift-round nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode)

;; vim-like keybindings everywhere in emacs
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))
(message "Loading evil-mode...done"))

(provide 'setup-evil)
