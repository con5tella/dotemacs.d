
;; improve the performance of opening markdown file
(add-hook 'markdown-mode-hook
          (lambda ()
            ;; (auto-fill-mode)  ;; if column ==80 return
            ;; (visual-line-mode t)
            (set (make-local-variable 'pangu-spacing-real-insert-separtor) t)
            ;; (spacemacs/toggle-centered-point-on)
            ))

(provide 'init-markdown-mode)
