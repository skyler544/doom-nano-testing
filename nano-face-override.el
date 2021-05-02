;;; nano-face-override.el -*- lexical-binding: t; -*-

; this is my way of customizing the faces used by nano.
; by default, nano's faces are too limiting in my opinion;
; syntax highlighting is much less effective when so many
; fields receive the same face attributes.

(set-face-attribute 'nano-face-critical nil
                    :foreground "#9c2f18" :background nil       )

(set-face-attribute 'help-key-binding nil
                    :foreground "#2f3b41" :background "#c2c5c8"
                    :weight 'bold         :box nil              )

(after! eros
 (set-face-attribute 'eros-result-overlay-face nil
                     :foreground "#2f3b41" :background "#c2c5c8"
                     :weight 'bold         :box t               ))

(after! flycheck
 (set-face-attribute 'flycheck-error nil
                     :underline '(:color "#9c2f18" :style wave  ))
 (set-face-attribute 'flycheck-warning nil
                     :underline '(:color "#ab9d27" :style wave  )))

(after! avy
 (set-face-attribute 'avy-lead-face nil
                     :foreground "#2f3b41" :background "#8494A3"
                     :underline t                               )
 (set-face-attribute 'avy-lead-face-1 nil
                     :foreground "#2f3b41" :background "#8494A3"
                     :underline t                               )
 (set-face-attribute 'avy-lead-face-0 nil
                     :foreground "#2f3b41" :background "#8494A3"
                     :underline t                               ))

(after! lsp-ui
  (set-face-attribute 'lsp-ui-doc-url nil
                      :inherit nil
                      :underline t
                      :background "#B2BAC2"                     )
  (set-face-attribute 'lsp-ui-doc-background nil
                      :inherit nil
                      :box        t
                      :background "#B2BAC2"                     ))

(after! lsp-mode
  (set-face-attribute 'lsp-signature-face nil
                      :background "#B2BAC2"
                      :inherit nil                              )
  (set-face-attribute 'lsp-face-highlight-read nil
                      :underline nil
                      :inherit nil
                      :background "#B2BAC2"                     )
  (set-face-attribute 'lsp-face-highlight-write nil
                      :underline t
                      :inherit nil
                      :background "#B2BAC2"                     ))

(after! git-gutter-fringe
  (set-face-attribute 'git-gutter-fr:modified nil
                      :weight 'bold
                      :foreground "#CCB032"                     ))

(after! magit
  (set-face-attribute 'magit-diff-hunk-heading-highlight nil
                      :underline t
                      :box nil
                      :background "#B0BABF"                     )
  (set-face-attribute 'magit-diff-hunk-heading nil
                      :background "#B0BABF"                     )
  (set-face-attribute 'magit-diff-context-highlight nil
                      :foreground "#2F3B41"
                      :background "#C2C5C8"                     )
  (set-face-attribute 'magit-diff-added-highlight nil
                      :weight 'bold
                      :foreground "#1C7043"
                      :background "#C2C5C8"                     )
  (set-face-attribute 'magit-diff-added nil
                      :foreground "#1C7043"
                      :background "#C2C5C8"                     )
  (set-face-attribute 'magit-diff-removed-highlight nil
                      :weight 'bold
                      :foreground "#A11715"
                      :background "#C2C5C8"                     )
  (set-face-attribute 'magit-diff-removed nil
                      :foreground "#A11715"
                      :background "#C2C5C8"                     )
  (set-face-attribute 'magit-hash nil
                      :weight 'bold
                      :foreground "#879099"                     )
  (set-face-attribute 'magit-section-highlight nil
                      :background "#B6BFC4"
                      :inherit nil                              ))

(after! info
 (set-face-attribute 'info-xref-visited nil
                     :foreground "#784A87"                      )
 (set-face-attribute 'info-menu-star nil
                     :foreground "#2F3B41"                      ))

(after! popup
 (set-face-attribute 'popup-tip-face nil
                     :background "#B2BAC2"                      ))

(set-face-attribute 'link nil
                    :underline  t                               )
(set-face-attribute 'button nil
                    :underline  t                               )
(after! hl-line
 (set-face-attribute 'hl-line nil :background "#98A5B3"         ))

(set-face-attribute 'cursor nil
                                          :background "#718591" )
(after! web-mode
  (set-face-attribute 'web-mode-doctype-face nil
                      :foreground "#485961"                     )
  (set-face-attribute 'web-mode-html-attr-name-face nil
                      :foreground "#335B6B"                     )
  (set-face-attribute 'web-mode-html-tag-face nil
                      :foreground "#664273"                     ))

(after! company
 (set-face-attribute 'company-tooltip-search nil
                     :background "#92A0A9"                      )
 (set-face-attribute 'company-tooltip-common nil
                     :background "#92A0A9"                      )
;(set-face-attribute 'company-box-scrollbar nil
;                    :background "#92A0A9"                      )
 (set-face-attribute 'company-tooltip-annotation nil
                     :background "#92A0A9"                      )
 (set-face-attribute 'company-scrollbar-bg nil
                     :background "#92A0A9"                      )
 (set-face-attribute 'company-scrollbar-fg nil
                     :background "#92A0A9"                      ))

(after! diredfl
 (set-face-attribute 'diredfl-dir-heading nil
                     :foreground "#466662" :background nil
                     :weight 'bold
                     :underline  t                              )
 (set-face-attribute 'diredfl-dir-name nil
                     :foreground "#476a87" :background nil      )
 (set-face-attribute 'diredfl-compressed-file-suffix nil
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
                     :foreground "#A71622" :background nil      )
 (set-face-attribute 'vterm-color-yellow nil
                     :foreground "#ab9d27" :background nil      )
 (set-face-attribute 'vterm-color-blue nil
                     :foreground "#4D6794" :background nil      )
 (set-face-attribute 'vterm-color-magenta nil
                     :foreground "#664273" :background nil      )
 (set-face-attribute 'vterm-color-green nil
                     :foreground "#4C6B3D" :background nil      ))
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
(after! hydra
 (set-face-attribute 'hydra-face-red nil
                     :foreground "#9c2f18"
                     :weight 'bold                              ))

(after! smartparens
 (set-face-attribute 'show-paren-match nil
                     :foreground "#7A4A82" :background "#628F88"
                     :weight 'bold         :inverse-video t     )
 (set-face-attribute 'sp-show-pair-match-face nil
                     :foreground "#7A4A82" :background "#628F88"
                     :weight 'bold         :inverse-video t     ))

; for reference
;(set-face-attribute face nil
;                    :foreground 'unspecified :background 'unspecified
;                    :family     'unspecified :slant      'unspecified
;                    :weight     'unspecified :height     'unspecified
;                    :underline  'unspecified :overline   'unspecified
;                    :box        'unspecified :inherit    style )

(provide 'nano-face-override                                    )
