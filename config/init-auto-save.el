
;; auto-save via manateelazycat/lazycat-emacs/site-lisp/extensions/lazycat/auto-save.el
(require 'auto-save)

(auto-save-enable)
(setq auto-save-slient t)
(setq auto-save-delete-trailing-whitespace t)

(provide 'init-auto-save)
