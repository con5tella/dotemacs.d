
(add-to-list 'load-path (expand-file-name "~/.emacs.d/modules/ess/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/modules/julia-mode"))

;; (require 'ess)
(require 'ess-site)
(require 'julia-mode)

(add-to-list 'auto-mode-alist '("\\.R\\'" . ess-r-mode))
(add-to-list 'auto-mode-alist '("\\.[Rr]history\\'" . ess-r-mode))
(add-to-list 'auto-mode-alist '("\\.[Rr]profile\\'" . ess-r-mode))
(add-to-list 'auto-mode-alist '("\\.[Ss][Aa][Ss]\\'" . SAS-mode))

(add-to-list 'auto-mode-alist '("dotR[(profile)|(environ)]" . ess-r-mode))


(bind-key* "C-c r" #'run-ess-r)
(bind-key* "s-r" #'run-ess-r)


(fset 'HA-macro-R-define
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item '(" <- " 0 "%d") arg)))

(bind-key* "M--" #'HA-macro-R-define)


(provide 'init-ess)
