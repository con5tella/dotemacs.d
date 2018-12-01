
;; set anaconda's ipython as default python interpreter
(setq python-shell-interpreter "/opt/anaconda/bin/ipython")


;; run IPython interpreter
(defun Hesperus-ipython ()
  "Open Python interpreter in Emacs terminal."
  (interactive)
  (ansi-term "/opt/anaconda/bin/ipython"))

(bind-key* "C-c I" 'Hesperus-ipython)
(bind-key* "s-I" 'Hesperus-ipython)


;; via github.com/cosven init-python
;; (use-package anaconda-mode :ensure t)
;; (use-package company-anaconda :ensure t)

(add-hook 'python-mode-hook 'company-mode)
(add-hook 'python-mode-hook #'hs-minor-mode)

(defun Hesperus-py-run ()
  "Run .py file."
  (interactive)
  (shell-command
   (format "%s %s" python-shell-interpreter
           (buffer-file-name (current-buffer)))))

(defun Hesperus-py-send-line()
  "将当前行发送到 python shell.
发送前会对删除前后空格，主要使用场景是将 doctest 代码发送到 shell 进行测试。"
  (interactive)
  (python-shell-send-string (string-trim (thing-at-point 'line))))

;; (eval-after-load "company"
;;   '(add-to-list 'company-backends 'anaconda-mode))

(add-hook 'python-mode-hook
          (lambda ()
            ;; tab-width and indent
            (setq tab-width 4)
            (set-variable 'python-indent-offset 4)
            (set-variable 'python-indent-guess-indent-offset nil)
            ;; submit current buffer
            (local-set-key (kbd "<f5>") 'Hesperus-py-run)
            (local-set-key (kbd "C-x C-e") 'Hesperus-py-send-line)))
;; (with-eval-after-load 'flycheck
;;   (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup))


;; ;; configure Emacs lsp via:
;; ;; vxlabs.com/2018/06/08/python-language-server-with-emacs-and-lsp-mode/
;; (use-package lsp-mode
;;   :ensure t
;;   :config

;;   ;; make sure we have lsp-imenu everywhere we have LSP
;;   (require 'lsp-imenu)
;;   (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)
;;   ;; get lsp-python-enable defined
;;   ;; NB: use either projectile-project-root or ffip-get-project-root-directory
;;   ;;     or any other function that can be used to find the root directory of a project
;;   (lsp-define-stdio-client lsp-python "python"
;;                            #'projectile-project-root
;;                            '("/opt/anaconda/bin/pyls"))

;;   ;; make sure this is activated when python-mode is activated
;;   ;; lsp-python-enable is created by macro above
;;   (add-hook 'python-mode-hook
;;             (lambda ()
;;               (lsp-python-enable)))

;;   ;; lsp extras
;;   (use-package lsp-ui
;;     :ensure t
;;     :config
;;     (setq lsp-ui-sideline-ignore-duplicate t)
;;     (add-hook 'lsp-mode-hook 'lsp-ui-mode))

;;   (use-package company-lsp
;;     :config
;;     (push 'company-lsp company-backends))

;;   ;; NB: only required if you prefer flake8 instead of the default
;;   ;; send pyls config via lsp-after-initialize-hook -- harmless for
;;   ;; other servers due to pyls key, but would prefer only sending this
;;   ;; when pyls gets initialised (:initialize function in
;;   ;; lsp-define-stdio-client is invoked too early (before server
;;   ;; start)) -- cpbotha
;;   (defun lsp-set-cfg ()
;;     (let ((lsp-cfg `(:pyls (:configurationSources ("/opt/anaconda/bin/flake8")))))
;;       ;; TODO: check lsp--cur-workspace here to decide per server / project
;;       (lsp--set-configuration lsp-cfg)))

;;   (add-hook 'lsp-after-initialize-hook 'lsp-set-cfg))


(provide 'init-python-mode)
