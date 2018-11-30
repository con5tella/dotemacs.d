(add-to-list 'load-path "~/.emacs.d/modules/lazycat-color-rg")

(require 'color-rg)

(bind-key* "C-c F" 'color-rg-search-project)
(bind-key* "s-F" 'color-rg-search-project)

(provide 'init-color-rg)
