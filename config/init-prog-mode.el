
;; improve prog-mode with rainbow-delimiters
(add-hook 'prog-mode-hook
          (lambda ()
            (rainbow-delimiters-mode)
            ))

(provide 'init-prog-mode)
