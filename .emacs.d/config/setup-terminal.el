(defvar rj/terminal-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list rj/terminal-shell)))
(ad-activate 'ansi-term)
(global-set-key (kbd "<s-return>") 'ansi-term)

(provide 'setup-terminal)
