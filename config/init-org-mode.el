
;; ;; config prog-header via @pengpengxp on emacs-china
;; (define-auto-insert 'org-mode '(nil "# -*- word-wrap: nil; -*-
;; #+OPTIONS: ^:{}
;; #+STARTUP: align
;; #+STARTUP: content
;; #+OPTIONS: toc:nil
;; "))

;; (define-auto-insert 'org-mode
;;   '(nil "# -*- word-wrap: nil; -*-
;; #+OPTIONS: ^:{}
;; #+STARTUP: align
;; #+TITLE:
;; #+AUTHOR:
;; #+STARTUP: content
;; #+STARTUP: indent
;; #+OPTIONS: toc:nil

;; "))

(defvar Hesperus-org-header
  "#+TITLE:
#+AUTHOR: Yuanchen Xie <yuanchen.gm@gmail.com>
#+STARTUP: content
#+STARTUP: indent
#+STARTUP: align
#+OPTIONS: H:2 num:t toc:t \n:nil @:t ::t |:t ^:t f:t TeX:t

")

(defun Hesperus-org-insert-header ()
  (interactive)
  (insert Hesperus-org-header))


;; improve the performance of opening org file
;; (add-hook 'org-mode-hook (lambda () (spacemacs/toggle-line-numbers-off)) 'append)
(add-hook 'org-mode-hook
          (lambda ()
            ;; (auto-fill-mode)  ;; if column ==80 return
            ;; (visual-line-mode t)
            (set (make-local-variable 'pangu-spacing-real-insert-separtor) t)
            ;; (spacemacs/toggle-centered-point-on)
            (setq auto-insert-query nil)
            (local-set-key (kbd "s-h") #'Hesperus-org-insert-header)
            ))


(provide 'init-org-mode)
