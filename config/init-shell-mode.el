;; aweshell

;; (add-to-list 'load-path (expand-file-name "~/elisps/lazycat-aweshell"))
;; (require 'aweshell)

;; (bind-key* "M-m '" 'aweshell-new)


(setq comint-prompt-read-only t)

;; shell-script
(add-to-list 'auto-mode-alist '("dotxprofile" . shell-script-mode))


(provide 'init-shell-mode)
