
;; path of company-english-helper
(add-to-list 'load-path (expand-file-name "~/.emacs.d/modules/lazycat-company-english-helper"))
;; manateelazycat/lazycat-emacs/tree/master/site-lisp/extensions/english-helper
(require 'company-english-helper)


;; toggle of Writting with company-english-helper
(bind-key* "C-c e" 'toggle-company-english-helper)
(bind-key* "s-e" 'toggle-company-english-helper)


(provide 'init-company-english-helper)
