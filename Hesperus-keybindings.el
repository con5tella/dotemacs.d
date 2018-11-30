;;; package --- Summary
;;; Commentary:

;; Hesperus Keybindings

;; remap with bind-key* func:
;; github.com/jwiegley/use-package/blob/master/bind-key.el

;;; Code:


;; shortcut key to open file init.el
(defvar Hesperus-emacs-init "~/.emacs.d/init.el")
(defun Hesperus-open-dotemacs ()
  "Open init.el in Emacs path."
  (interactive)
  (find-file Hesperus-emacs-init)
  (current-buffer))
(bind-key* "s-d" #'Hesperus-open-dotemacs)


;; switch diff Modes
(bind-keys*
 ("C-c m e" . emacs-lisp-mode)
 ("C-c m l" . latex-mode)
 ("C-c m m" . markdown-mode)
 ("C-c m o" . org-mode)
 ("C-c m p" . python-mode)
 ("C-c m r" . R-mode)
 ("C-c m t" . tex-mode)
 ("C-c m x" . text-mode)
 ("C-c m y" . yaml-mode))

;; same function with Super key
(bind-keys*
 ("s-m e" . emacs-lisp-mode)
 ("s-m l" . latex-mode)
 ("s-m m" . markdown-mode)
 ("s-m o" . org-mode)
 ("s-m p" . python-mode)
 ("s-m r" . R-mode)
 ("s-m t" . tex-mode)
 ("s-m x" . text-mode)
 ("s-m y" . yaml-mode))


;; keybindings with prefix "C-c"

;; use helm-mini to switch Buffers
(bind-key* "C-c b" 'lazy-helm/helm-mini)
(bind-key* "s-b" 'lazy-helm/helm-mini)

;; Describe-char and codepoint
(bind-key* "C-c D" 'describe-char)
(bind-key* "s-D" 'describe-char)

;; Find file in project
(bind-key* "C-c f" 'helm-projectile-find-file)
(bind-key* "s-f" 'helm-projectile-find-file)

;; popup maGit status
(bind-key* "C-c g" 'magit-status)
(bind-key* "s-g" 'magit-status)

;; Jump with avy-goto-char
(bind-key* "C-c j" 'avy-goto-char)
(bind-key* "s-j" 'avy-goto-char)

;; ;; use bing dict to Translate
;; (bind-key* "C-c t" 'bing-dict-brief)
;; (bind-key* "s-t" 'bing-dict-brief)

;; use bing dict to Translate
(bind-key* "C-c t" 'youdao-dictionary-search-at-point+)
(bind-key* "s-t" 'youdao-dictionary-search-at-point+)

;; Quickrun
(bind-key* "C-c q" 'quickrun)
(bind-key* "s-q" 'quickrun)

;; visualized Undo-tree
(bind-key* "C-c u" 'undo-tree-visualize)
(bind-key* "s-u" 'undo-tree-visualize)


;; keybindings with prefix Control key

;; similar with the function of "o" in Vim
;; start newline whether in brackets or not
(bind-key* "C-o" (lambda ()
                   (interactive)
                   (end-of-visual-line)
                   (newline-and-indent)))


;; search and replace with Swiper and Replace-regexp
(bind-key* "C-S-r" 'query-replace-regexp)
(bind-key* "C-s" 'swiper)
(bind-key* "C-S-s" 'isearch-forward-regexp)


;; similar with the function of "=" in vim
(bind-key* "C-=" 'indent-region)

;; remap M-^ to M-6 (Not type shift)
(bind-key* "M-6" 'delete-indentation)


(provide 'Hesperus-keybindings)

;;; Hesperus-keybindings.el ends here
