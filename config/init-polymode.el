
(setq load-path
      (append (list "~/.emacs.d/modules/polymode" "~/.emacs.d/modules/poly-markdown" "~/.emacs.d/modules/poly-noweb" "~/.emacs.d/modules/poly-R")
              load-path))

(require 'poly-markdown)
(require 'poly-R)

;; (defun rmd-mode ()
;;   "ESS Markdown mode for rmd files"
;;   (interactive)
;;   ;; (setq load-path
;;   ;;       (append (list"path/to/polymode/""path/to/polymode/modes/")
;;   ;;               load-path))
;;   (require 'poly-R)
;;   (require 'poly-markdown)
;;   (poly-markdown+r-mode))


(provide 'init-polymode)
