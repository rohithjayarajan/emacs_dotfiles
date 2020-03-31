(setq ring-bell-function 'ignore        ; disable beeping
      x-gtk-use-system-tooltips nil     ; disable gui popups
      use-dialog-box nil                ; disable gui popups
      echo-keystrokes 0.5               ; echo keystrokes faster
      confirm-kill-processes nil        ; kill the process
      disabled-command-function nil)    ; enable all commands

(menu-bar-mode -1)                      ; hide menu-bar
(tool-bar-mode -1)                      ; hide tool-bar
(scroll-bar-mode -1)                    ; hide scroll-bar
(blink-cursor-mode 0)                   ; disable blinking
(show-paren-mode t)                     ; enable matching paren highlight
(column-number-mode t)                  ; enable column numbers

;; Scrolling
(setq mouse-wheel-scroll-amount '(1)    ; gentle scrolling
      mouse-wheel-progressive-speed nil ; disable acceleration
      scroll-conservatively 101         ; disable jump to the middle of screen
      hscroll-margin 1                  ; disable early scroll
      hscroll-step 1                    ; small step of scroll
      scroll-preserve-screen-position t) ; try to keep cursor in its position

(global-linum-mode t)

(when window-system (global-hl-line-mode t))
(when window-system (global-prettify-symbols-mode t))

(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))

(setq make-backup-file nil)
(setq auto-save-default nil)

(winner-mode t)

(desktop-save-mode t)
(save-place-mode t)

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; Security
(setq gnutls-verify-error t
      tls-checktrust t)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

;; Compilation
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))

;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t

 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;; company
(use-package company
  :init
  (global-company-mode 1)
  (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;; Package: projejctile
(use-package projectile
  :init
  (projectile-global-mode)
  (setq projectile-enable-caching t))

;; Package zygospore
(use-package zygospore
  :bind (("C-x 1" . zygospore-toggle-delete-other-windows)
         ("RET" .   newline-and-indent)))

  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)
(windmove-default-keybindings)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(provide 'setup-general)
