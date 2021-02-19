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
;;
;; I've modified this to be similar to my
;;

(require 'nano-base-colors)
(defun nano-theme-set-light ()
  "Apply light Nano theme base."
  (setq frame-background-mode    'light)
  (setq nano-color-foreground "#2F3B41")
  (setq nano-color-background "#C2C5C8")
  (setq nano-color-highlight  "#24566B")
  (setq nano-color-critical   "#AB9D27")
  (setq nano-color-salient    "#335B6B")
  (setq nano-color-strong     "#2E3B40")
  (setq nano-color-popout     "#4C6B3D")
  (setq nano-color-subtle     "#718591")
  (setq nano-color-faded      "#485961"))

(nano-theme-set-light)

(provide 'nano-theme-light)
