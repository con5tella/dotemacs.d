;; init-elpa.el
(require 'package)

;; ;; 增加软件包仓库
;; (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
;; (when (< emacs-major-version 24)
;;   (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))

;; elpa mirrors
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; 定义require-package函数
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))
;; 强行提前初始化ELPA。因为默认情况下Emacs在init.el加载完之后才开始初始化ELPA，
;; 而我们把大多数包的初始化函数都放在init.el中，如果不提前初始化ELPA会导致后面的
;; 初始化过程出错（对应的包文件还没有加载进来）。

;; spacemacs warn not necessary to init
;; (package-initialize)

(provide 'init-elpa)


;; auto install example.el

;; ;; init-example.el
;; (require-package 'example)
;; ;; ELPA中的插件一般都提供一个"autoloads"方法，可以帮用户自动加载插件并做相应
;; ;; 的配置。不过如果涉及到细节的配置，那请自己看该插件的帮助文档。
;; (require 'example-autoloads)
;; (provide 'init-example)
