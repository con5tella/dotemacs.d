(add-to-list 'load-path (expand-file-name "~/.emacs.d/modules/lazycat-insert-translated-name"))

;; manateelazycat/insert-translated-name
(require 'insert-translated-name)


;; Insert-translated-name
(bind-key* "C-c i" 'insert-translated-name-insert)
(bind-key* "s-i" 'insert-translated-name-insert)


(provide 'init-insert-translated-name)
