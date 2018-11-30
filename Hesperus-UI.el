;;; package --- Summary
;;; Commentary:

;; Hesperus User interface

;;; Code:


;; awesome-tab
(require 'init-awesome-tab)
;; Colorize color names in buffers
(require 'init-rainbow-mode)

;; ;; un-display mode-line
;; (setq-default mode-line-format nil)
;; ;; use awesome-tray altered mode-line
;; (require 'awesome-tray)
;; (awesome-tray-mode 1)
;; (set-face-attribute 'mode-line-inactive nil :height 0.1 :inherit 'unspecified)


;; one-key switch theme via @ksqsf at emacs-china
;; the fixed original code is at the end of this doc.
(defvar *Hesperus-default-theme* 'monokai)
(defvar *Hesperus-dark-theme* 'monokai)
(defvar *Hesperus-light-theme* 'doom-one-light)
(defvar *Hesperus-current-theme* 'HA-default-theme)


;; use switch function to set diff theme face-attribute via @twlz0ne at emacs-china

(defun Hesperus-switch-to-dark-theme ()
  "One-key switch to dark themes."
  (interactive)
  (cond ((or (eq *Hesperus-current-theme* 'HA-light-theme)
             (eq *Hesperus-current-theme* 'HA-default-theme))
         (disable-theme *Hesperus-light-theme*)
         (load-theme *Hesperus-dark-theme*)
         (set-face-attribute 'default nil :foreground "#3de1ad") ;; Emerald #7bcfa6 stone-Cyan #7fecad Ethereal
         (set-face-attribute 'font-lock-comment-face nil :foreground "#bbcdc5") ;; crab-shell
         (set-face-attribute 'font-lock-comment-delimiter-face nil :foreground "#80766e") ;; Wild-goose
         (set-face-attribute 'font-lock-constant-face nil :foreground "#f47759") ;; city-wall-brick
         (set-face-attribute 'font-lock-doc-face nil :italic t :foreground "#ffc773") ;; turmeric
         (set-face-attribute 'font-lock-function-name-face nil :foreground "#ffa631") ;; apricot
         (set-face-attribute 'font-lock-keyword-face nil :foreground "#8dd4e8") ;; Azure
         ;; (set-face-attribute 'font-lock-string-face nil :foreground "#e9f1f6" :background "#35363a") ;; frost,
         (set-face-attribute 'font-lock-string-face nil :foreground "#e9f1f6" :background "#392f41") ;; frost, crow-Black
         (setq *Hesperus-current-theme* 'HA-dark-theme))
        ((eq *Hesperus-current-theme* 'HA-dark-theme)
         (disable-theme *Hesperus-dark-theme*)
         (load-theme *Hesperus-dark-theme*)
         (setq *Hesperus-current-theme* 'HA-default-theme))
        (t (error "Current theme is already dark."))))
(bind-key* "<f8>" #'Hesperus-switch-to-dark-theme)

;; execute automatically when Emacs start up
(Hesperus-switch-to-dark-theme)


(defun Hesperus-switch-to-light-theme ()
  "One-key switch to light theme."
  (interactive)
  (cond ((or
          (eq *Hesperus-current-theme* 'HA-dark-theme)
          (eq *Hesperus-current-theme* 'HA-default-theme))
         (disable-theme *Hesperus-dark-theme*)
         (load-theme *Hesperus-light-theme*)
         (set-face-attribute 'default nil :foreground "#065279") ;; Indigo
         (set-face-attribute 'font-lock-builtin-face nil :foreground "#60281e") ;; chestnut
         (set-face-attribute 'font-lock-comment-face nil :foreground "#9b4400") ;; Brown-Red
         (set-face-attribute 'font-lock-constant-face nil :foreground "#424c50") ;; Raven-Cyan
         (set-face-attribute 'font-lock-doc-face nil :foreground "#9c5333") ;; ocher
         (set-face-attribute 'font-lock-keyword-face nil :foreground "#4b5cc4") ;; Royal-Blue
         (set-face-attribute 'font-lock-string-face nil :foreground "#057748" :background "#e0eee8") ;; pine-Green, duck-egg
         (setq *Hesperus-current-theme* 'HA-light-theme))
        (t (error "Current theme is already light."))))
(bind-key* "<f9>" #'Hesperus-switch-to-light-theme)


;; split window right/below
;; via emacs-china.org/t/topic/945/2
(defun Hesperus-split-window-right ()
  "Split window with another buffer."
  (interactive)
  (select-window (split-window-right))
  (switch-to-buffer (other-buffer)))

(defun Hesperus-split-window-below ()
  "Split window with another buffer."
  (interactive)
  (select-window (split-window-below))
  (switch-to-buffer (other-buffer)))

(bind-key* "C-x 3" #'Hesperus-split-window-right)
(bind-key* "C-x 2" #'Hesperus-split-window-below)


;; Highlight brackets according to their depth
;; (use-package rainbow-delimiters
;;   :hook (prog-mode . rainbow-delimiters-mode))


;; set Chinese fonts not using chinese layer, same to chinese-fonts-setup, cnfonts
(set-frame-font "Source Code Pro")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset (font-spec :family "Source Han Sans CN" :size 16)))


;; one-key to switch themes:

;; ;; (load-theme 'spacemacs-light t)
;; (global-set-key (kbd "<f8>") #'switch-theme-variant)

;; (defun switch-theme-variant ()
;;   "One-key(<F8>) switch themes."
;;   (interactive)
;;   (cond ((eq *Hesperus-current-theme* 'light)
;;          (disable-theme *Hesperus-light-theme*)
;;          (load-theme *Hesperus-dark-theme*)
;;          (setq *Hesperus-current-theme* 'dark))
;;         ((eq *Hesperus-current-theme* 'dark)
;;          (disable-theme *Hesperus-dark-theme*)
;;          (load-theme *Hesperus-light-theme*)
;;          (setq *Hesperus-current-theme* 'light))
;;         (t (error "Unknown variant"))))


;; ;; customize set-faces
;; ;; examples via stackoverflow.com/questions/24838722/emacs-font-lock-function-name-in-definitions-with-more-than-one-parameter
;; (custom-set-faces
;;  '(default ((t (:background "#F9F9F7" :family "liberation mono"))))
;;  '(font-lock-builtin-face ((t (:foreground "#5B5B5B"))))
;;  '(font-lock-comment-face ((t (:foreground "#afaf9d"))))
;;  '(font-lock-constant-face ((t (:foreground "#2caeae"))))
;;  '(font-lock-function-name-face ((t (:bold t :foreground "#931616"))))
;;  '(font-lock-keyword-face ((t (:bold t :foreground "#35363a"))))
;;  '(font-lock-negation-char-face ((t (:bold t))))
;;  '(font-lock-reference-face ((t (:foreground "#cbcbcb"))))
;;  '(font-lock-string-face ((t (:foreground "#e80000"))))
;;  '(font-lock-type-face ((t (:bold t :foreground "#3f4d7f"))))
;;  '(font-lock-variable-name-face ((t (:foreground "#35363a"))))
;;  '(font-locl-preprocessor-face ((t (:foreground "#cbcbcb"))))
;;  )
;; ;; wiki of Faces for Font Lock:
;; ;; www.gnu.org/software/emacs/manual/html_node/elisp/Faces-for-Font-Lock.html


(provide 'Hesperus-UI)

;;; Hesperus-UI.el ends here
