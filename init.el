;;; init.el --- My Emacs initiate configurations.

;; Copyright (C) 2018 Yuanchen Xie

;; Author: Yuanchen Xie <yuanchen.gm@gmail.com>

;;; Commentary:
;;
;; Emacs config to manage diff .emacs.d files
;;

;;; Code:


;; path to save emacs configurations
(defconst user-emacs-directory
  (file-name-directory
   (file-chase-links
    (expand-file-name "~/emacsdirs/syl20bnr-spacemacs/")
    ;; (expand-file-name "~/emacsdirs/centaur-emacs/")
    ;; (expand-file-name "~/emacsdirs/purcell-emacs/")
    ;; (expand-file-name "~/emacsdirs/prelude-emacs/")
    ))
  "The giant turtle on which the world rests.")
(load-file (expand-file-name "init.el" user-emacs-directory))


;; path of site-lisp & configurations
;; auto-save.el & awesome-tab & insert-translated-name & etc.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))


(require 'init-elpa)


;; ;; test config as Lazycat
;; (defun add-subdirs-to-load-path (dir)
;;   "Recursive add directories to 'load-path'."
;;   (let ((default-directory (file-name-as-directory dir)))
;;     (add-to-list 'load-path dir)
;;     (normal-top-level-add-subdirs-to-load-path)))
;; (add-subdirs-to-load-path "~/.emacs.d/test-config")


;; improve for default func
(require 'init-config)


;; --- User Interface ---
(require 'Hesperus-UI)


;;; --- improve editing mode ---

(require 'init-auto-save)

(require 'init-color-rg)

(require 'init-symbol-overlay)

;; improve parentheses editing for elisp
(require 'init-paredit)

(require 'fasta)

;; English editing
(require 'init-company-english-helper)
(require 'init-insert-translated-name)

;; visual-regexp replacement
(require 'init-visual-regexp)

;; --- improve for prog-cor mode ---
(require 'init-prog-mode)

(require 'init-ess)
(require 'init-markdown-mode)
(require 'init-org-mode)
(require 'init-python-mode)
(require 'init-tex-mode)

(require 'init-polymode)


;; shell and its script
(require 'init-shell-mode)


;; --- Keybindings ---
(require 'Hesperus-keybindings)


;;; init.el ends here
