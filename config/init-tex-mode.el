
;; improve the performance of opening tex file
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-engine 'xetex
                  TeX-show-compilation t)
            (auto-fill-mode -1)
            (set (make-local-variable 'pangu-spacing-real-insert-separtor) t)
            ))


;; macrOs for LaTeX-mode

(fset 'HA-macro-TeX-frame
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item '([return 92 98 101 103 105 110 123 102 114 97 109 101 6 123 6 return 92 98 101 103 105 110 123 98 108 111 99 107 6 123 6 return return 92 101 110 100 123 98 108 111 99 107 6 return 92 101 110 100 123 102 114 97 109 101 6 return 16 16 16 tab] 0 "%d") arg)))

(fset 'HA-macro-TeX-block
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item '([5 return 92 98 101 103 105 110 123 98 108 111 99 107 6 123 6 return return 92 101 110 100 123 98 108 111 99 107 6 tab 16 tab] 0 "%d") arg)))

(fset 'HA-macro-TeX-indent
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item '("\\setlength{\\parindent{1.6em" 0 "%d") arg)))

(fset 'HA-macro-TeX-figure
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item '([tab 92 98 101 103 105 110 123 102 105 103 117 114 101 6 123 6 return 92 99 101 110 116 101 114 105 110 103 return 92 105 110 99 108 117 100 101 103 114 97 112 104 105 99 115 91 104 101 105 103 104 116 61 92 116 101 120 116 104 101 105 103 104 116 6 123 6 return 92 101 110 100 123 102 105 103 117 114 101 6 tab 16 134217830 134217830 6] 0 "%d") arg)))

(bind-key* "C-c o f" #'HA-macro-TeX-frame)
(bind-key* "C-c o b" #'HA-macro-TeX-block)
(bind-key* "C-c o i" #'HA-macro-TeX-indent)
(bind-key* "C-c o g" #'HA-macro-TeX-figure)

(bind-key* "s-o f" #'HA-macro-TeX-frame)
(bind-key* "s-o b" #'HA-macro-TeX-block)
(bind-key* "s-o i" #'HA-macro-TeX-indent)
(bind-key* "s-o g" #'HA-macro-TeX-figure)

(provide 'init-tex-mode)
