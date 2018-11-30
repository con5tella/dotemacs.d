(add-to-list 'load-path (expand-file-name "~/.emacs.d/modules/wolray-symbol-overlay"))

(require 'symbol-overlay)
(global-set-key (kbd "M-i") 'symbol-overlay-put)
;; (global-set-key (kbd "M-n") 'symbol-overlay-switch-forward)
;; (global-set-key (kbd "M-p") 'symbol-overlay-switch-backward)
;; (global-set-key (kbd "<f7>") 'symbol-overlay-mode)
;; (global-set-key (kbd "<f8>") 'symbol-overlay-remove-all)
(bind-key* "M-I" 'symbol-overlay-remove-all)

(provide 'init-symbol-overlay)
