(add-to-list 'load-path (expand-file-name "~/.emacs.d/modules/benma-visual-regexp"))

;; visual-regexp replace
(require 'visual-regexp)
(setq vr/match-separator-use-custom-face t)
(setq vr/match-separator-string "⇛")

(bind-key* "C-r" 'vr/query-replace)

(provide 'init-visual-regexp)
