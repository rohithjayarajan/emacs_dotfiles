(require 'evil-states)
(require 'evil-ex)
(require 'evil-commands)
(require 'evil-command-window)
(require 'evil-common)

(use-package key-chord
  :ensure t)
(require 'key-chord)
(key-chord-mode 1)

;; window commands
(define-prefix-command 'evil-window-map)
(define-key evil-window-map (kbd "j") 'evil-window-delete)
(define-key evil-window-map (kbd "t") 'evil-window-down)
(define-key evil-window-map (kbd "T") 'evil-window-move-very-bottom)
(define-key evil-window-map (kbd "c") 'evil-window-up)
(define-key evil-window-map (kbd "C") 'evil-window-move-very-top)
(define-key evil-window-map (kbd "n") 'evil-window-right)
(define-key evil-window-map (kbd "n") 'evil-window-move-far-right)
(define-key evil-window-map (kbd "k") 'evil-window-new)
(define-key evil-window-map (kbd "l") 'evil-window-top-left)

;;; Motion state
(define-key evil-motion-state-map (kbd "t") 'evil-next-line)
(define-key evil-motion-state-map (kbd "c") 'evil-previous-line)
(define-key evil-motion-state-map (kbd "n") 'evil-forward-char)
(define-key evil-motion-state-map (kbd "k") 'evil-search-next)
(define-key evil-motion-state-map (kbd "K") 'evil-search-previous)
(define-key evil-motion-state-map (kbd "j") 'evil-find-char-to)
(define-key evil-motion-state-map (kbd "J") 'evil-find-char-to-backward)

;;; Normal state
(define-key evil-normal-state-map (kbd "t") 'evil-next-line)
(define-key evil-normal-state-map (kbd "c") 'evil-previous-line)
(define-key evil-normal-state-map (kbd "n") 'evil-forward-char)


;; Ex
(define-key evil-motion-state-map (kbd "SPC") 'evil-ex)

;;map kk to escape
(key-chord-define evil-insert-state-map (kbd "kk") 'evil-normal-state)

;;line above
;(defun rj/new-line-above ()
;  "Create new line above."
;  (interactive)
;  (evil-open-above)
;  (evil-normal-state)
;  (evil-next-line))

;(key-chord-define evil-normal-state-map (kbd "kc") 'rj/new-line-above)

;;line below
;(defun rj/new-line-below ()
;  "Create new line below."
;  (interactive)
;  (evil-open-below)
;  (evil-normal-state)
;  (evil-previous-line))

;(key-chord-define evil-normal-state-map (kbd "tt") 'rj/new-line-below)

(provide 'setup-evilrc)

