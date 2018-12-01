
;;; Require
(require 'paredit)


;;; Code:

(dolist (hook (list
               'c-mode-common-hook
               'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'haskell-mode-hook
               'emacs-lisp-mode-hook
               'lisp-interaction-mode-hook
               'lisp-mode-hook
               'maxima-mode-hook
               'ielm-mode-hook
               'sh-mode-hook
               'makefile-gmake-mode-hook
               'php-mode-hook
               'python-mode-hook
               'js-mode-hook
               'go-mode-hook
               'qml-mode-hook
               'jade-mode-hook
               'css-mode-hook
               'ruby-mode-hook
               'coffee-mode-hook
               'rust-mode-hook
               'qmake-mode-hook
               'lua-mode-hook
               'swift-mode-hook
               'minibuffer-inactive-mode-hook
               ))
  (add-hook hook '(lambda () (paredit-mode 1))))


(bind-keys*
 ("M-[" . paredit-backward-slurp-sexp)
 ("M-]" . paredit-forward-slurp-sexp)
 ("M-{" . paredit-backward-barf-sexp)
 ("M-}" . paredit-forward-barf-sexp))

(bind-keys*
 ("C-c s [" . paredit-backward-slurp-sexp)
 ("C-c s ]" . paredit-forward-slurp-sexp)
 ("C-c s {" . paredit-backward-barf-sexp)
 ("C-c s }" . paredit-forward-barf-sexp)
 ("C-c s <" . paredit-splice-sexp-killing-backward)
 ("C-c s >" . paredit-splice-sexp-killing-forward))

(bind-keys*
 ("s-s [" . paredit-backward-slurp-sexp)
 ("s-s ]" . paredit-forward-slurp-sexp)
 ("s-s {" . paredit-backward-barf-sexp)
 ("s-s }" . paredit-forward-barf-sexp)
 ("s-s <" . paredit-splice-sexp-killing-backward)
 ("s-s >" . paredit-splice-sexp-killing-forward))

;; Note: in default,
;; "M-s" 'paredit-splice-sexp
;; "M-S" 'paredit-split-sexp
(bind-key* "M-j" 'paredit-join-sexps)


;; part of One-key via init-paredit by Lazycat
;; (("n" . "Join next list") . paredit-join-with-next-list)
;; (("p" . "Join previous list") . paredit-join-with-previous-list)
;; (("N" . "Add next list") . paredit-add-to-next-list)
;; (("P" . "Add previous list") . paredit-add-to-previous-list)
;; ;; Move.
;; (("u" . "Move list forward") . paredit-move-list-forward)
;; (("i" . "Move list backward") . paredit-move-list-backward)


(provide 'init-paredit)

;;; init-paredit.el ends here
