(add-to-list 'load-path (expand-file-name "~/.emacs.d/modules/rainbow-mode"))

;; Colorize color names in buffers
(use-package rainbow-mode
  :diminish
  :hook ((emacs-lisp-mode web-mode css-mode ess-r-mode) . rainbow-mode))


(provide 'init-rainbow-mode)
