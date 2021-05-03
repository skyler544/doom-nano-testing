;; ---------------------------------------------------------------------
;; GNU Emacs / N Λ N O - Emacs made simple
;; Copyright (C) 2020 - N Λ N O developers
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;; ---------------------------------------------------------------------

(require 'nano-base-colors)
(defun nano-theme-set-light ()
  "Apply light Nano theme base."
  (setq frame-background-mode  'light       )
  (setq nano-color-foreground  dn-foreground)
  (setq nano-color-background  dn-background)
  (setq nano-color-highlight   dn-highlight )
  (setq nano-color-critical    dn-attention )
  (setq nano-color-salient     dn-salient   )
  (setq nano-color-strong      dn-strong    )
  (setq nano-color-popout      dn-popout    )
  (setq nano-color-subtle      dn-subtle    )
  (setq nano-color-faded       dn-faded     ))

(nano-theme-set-light)

(provide 'nano-theme-light)
