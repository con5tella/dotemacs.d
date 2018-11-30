;;; package --- Summary

;;; Commentary:

;;; Code:

;; un-display frame-title
;; use tab as header
(set-frame-parameter (car (frame-list)) 'undecorated t)


(add-to-list 'load-path (expand-file-name "~/.emacs.d/modules/lazycat-awesome-tab"))

;; manateelazycat/awesome-tab
(require 'awesome-tab)
(awesome-tab-mode t)
(awesome-tab-build-helm-source)

;; select tab with awesome-tab
(bind-key* "s-n" 'awesome-tab-forward)
(bind-key* "s-p" 'awesome-tab-backward)
;; (bind-key* "M-C-n" 'tabbar-forward-group)
;; (bind-key* "M-C-p" 'tabbar-backward-group)
(bind-key* "C-x K" 'awesome-tab-kill-all-buffers-in-current-group)


(provide 'init-awesome-tab)
;;; init-awesome-tab ends here
