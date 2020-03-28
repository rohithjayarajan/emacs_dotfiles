;;; -*- lexical-binding: t -*-

(setq ring-bell-function 'ignore        ; disable beeping
      x-gtk-use-system-tooltips nil     ; disable gui popups
      use-dialog-box nil                ; disable gui popups
      echo-keystrokes 0.5               ; echo keystrokes faster
      confirm-kill-processes nil        ; kill the process
      disabled-command-function nil)    ; enable all commands

(menu-bar-mode -1)                      ; hide menu-bar
(tool-bar-mode -1)                      ; hide tool-bar
(scroll-bar-mode -1)                    ; hide scroll-bar
(blink-cursor-mode 0)
					; disable blinking
(show-paren-mode t)                     ; enable matching paren highlight
(column-number-mode t)                  ; enable column numbers

;; Scrolling
(setq mouse-wheel-scroll-amount '(1)    ; gentle scrolling
      mouse-wheel-progressive-speed nil ; disable acceleration
      scroll-conservatively 101         ; disable jump to the middle of screen
      hscroll-margin 1                  ; disable early scroll
      hscroll-step 1                    ; small step of scroll
      scroll-preserve-screen-position t) ; try to keep cursor in its position

(winner-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)

(desktop-save-mode t)
(save-place-mode t)

;; Security
(setq gnutls-verify-error t
      tls-checktrust t)


