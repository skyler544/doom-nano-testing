;;; nano-face-override.el -*- lexical-binding: t; -*-

; this is my way of customizing the faces used by nano.
; by default, nano's faces are too limiting in my opinion;
; syntax highlighting is much less effective when so many
; fields receive the same face attributes.

(set-face-attribute 'nano-face-critical nil
                    :foreground "#9c2f18" :background nil       )

(set-face-attribute 'link nil
                    :underline  t                               )
(set-face-attribute 'button nil
                    :underline  t                               )

(set-face-attribute 'hl-line nil
                                          :background "#98A5B3" )
(set-face-attribute 'cursor nil
                                          :background "#718591" )

(after! diredfl
 (set-face-attribute 'diredfl-dir-heading nil
                     :foreground "#466662" :background nil
                     :weight 'bold
                     :underline  t                              )
 (set-face-attribute 'diredfl-dir-name nil
                     :foreground "#476a87" :background nil      )
 (set-face-attribute 'diredfl-file-name nil
                     :foreground "#2f3b41"                      )
 (set-face-attribute 'diredfl-file-suffix nil
                     :foreground "#4c5e6e"                      ))

(set-face-attribute 'org-link nil
                    :underline  t                               )

(set-face-attribute 'font-lock-builtin-face nil
                    :foreground "#664273"                       )

(defun set-shell-face (                                         )
  (set-face-attribute 'sh-quoted-exec nil
                      :foreground "#547894"                     ))
(add-hook 'sh-mode-hook #'set-shell-face                        )

(defun vterm-faces (                                            )
 (set-face-attribute 'vterm-color-red nil
                     :foreground "#AD3A41" :background nil      )
 (set-face-attribute 'vterm-color-yellow nil
                     :foreground "#ab9d27" :background nil      )
 (set-face-attribute 'vterm-color-green nil
                     :foreground "#337846" :background nil      ))
(add-hook 'vterm-mode-hook #'vterm-faces                        )

(after! mu4e-thread-folding
 (set-face-attribute 'mu4e-header-highlight-face nil
                     :underline nil :background nil             )
 (set-face-attribute 'mu4e-thread-folding-root-unfolded-face nil
                     :underline nil :background "#98a5b3"       )
 (set-face-attribute 'mu4e-thread-folding-child-face nil
                     :background "#98a5b3"                      ))

(after! font-latex
 (set-face-attribute 'font-latex-script-char-face nil
                     :foreground "#516575"
                     :weight 'bold                              )
 (set-face-attribute 'font-latex-math-face nil
                     :foreground "#516575"
                     :weight 'bold                              ))

(after! smartparens
 (set-face-attribute 'show-paren-match nil
                     :foreground "#2F3B41" :background "#60807f")
 (set-face-attribute 'sp-show-pair-match-face nil
                     :foreground "#2F3B41" :background "#60807f"))

; for reference
;(set-face-attribute face nil
;                    :foreground 'unspecified :background 'unspecified
;                    :family     'unspecified :slant      'unspecified
;                    :weight     'unspecified :height     'unspecified
;                    :underline  'unspecified :overline   'unspecified
;                    :box        'unspecified :inherit    style)

(provide 'nano-face-override)
