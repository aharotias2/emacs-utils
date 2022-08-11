;;; mito-zuki-light-theme.el --- color theme suitable for color-blind users

;; Copyright (C) 2011-2020 Free Software Foundation, Inc.

;; Author: Chong Yidong <cyd@stupidchicken>

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Code:

(deftheme valadoc
  "Face colors suitable for red/green color-blind users.
The color palette is from B. Wong, Nature Methods 8, 441 (2011).
It is intended to provide good variability while being easily
differentiated by individuals with protanopia or deuteranopia.

Basic, Font Lock, Isearch, Gnus, Message, Flyspell, and
Ansi-Color faces are included.")

(let ((basic-black "#000000")
      (basic-white "#FFFFFF")
      (basic-red "crimson")
      (basic-green "limegreen")
      (basic-orange "#DC322F")
      (basic-yellow "#f8ec59")
      (basic-blue "#0072b2")
      (basic-lightblue "#56b4e9")
      (basic-darkblue "mediumblue")
      (basic-lightgreen "#2BA199")
      (basic-lightcyan "#93AABC")
      (basic-bluegreen "#009e73")
      (basic-vermillion "#d55e00")
      (basic-lightpurple "#cc79a7")
      (basic-purple "darkmagenta")
      (basic-bluegray "#848ea9")
      (basic-lightgray "#DDDDDD")
      (basic-darkgray "#333333")
      (basic-gray "#999999"))
  (let* ((class '((class color) (min-colors 89)))
         (valadoc-fg basic-black)
         (valadoc-bg basic-white)
         (main-keyword basic-orange)
         (main-literal basic-green)
         (main-comment basic-lightcyan)
         (main-function-name basic-green)
         (main-builtin basic-purple)
         (main-type-name basic-darkblue)
         (main-label basic-blue)
         (space-fg basic-lightgray)
         (newline-fg basic-lightgray)
         (fringe-bg basic-lightgray)
         (fringe-fg basic-darkgray))
    (custom-theme-set-faces
     'valadoc
     `(default                      ((,class (:foreground ,valadoc-fg
                                              :background ,valadoc-bg))))
     `(cursor                       ((,class (:background "tomato"))))
     ;; Highlighting faces
     `(fringe                       ((,class (:background ,fringe-bg
                                              :foreground ,fringe-fg))))
     `(highlight                    ((,class (:foreground ,basic-blue
                                              :background "#e5e5e5"))))
     `(region                       ((,class (:foreground unspecified
                                              :background ,basic-yellow))))
     `(secondary-selection          ((,class (:background "#e5e5e5"))))
     `(isearch                      ((,class (:foreground "white"
                                              :background ,basic-vermillion))))
     `(lazy-highlight               ((,class (:foreground "white"
                                              :background ,basic-lightpurple))))
     `(trailing-whitespace          ((,class (:background ,basic-vermillion))))
     `(whitespace-space             ((,class (:background ,valadoc-bg
                                              :foreground ,space-fg))))
     `(whitespace-trailing          ((,class (:background ,valadoc-bg
                                              :foreground ,space-fg))))
     `(whitespace-tab               ((,class (:background ,valadoc-bg
                                              :foreground ,space-fg))))
     `(whitespace-line              ((,class (:background ,valadoc-bg
                                              :foreground ,space-fg))))
     `(whitespace-newline           ((,class (:background ,valadoc-bg
                                              :foreground ,newline-fg))))
     ;; line numbers (Emacs 26.1 and above)
     `(line-number                  ((,class (:foreground ,fringe-fg
                                              :background ,fringe-bg))))
     `(line-number-current-line     ((,class (:inherit line-number
                                              :foreground ,basic-orange))))
     ;; Mode line faces
     `(mode-line                    ((,class (:box (:line-width -1
                                                    :style released-button)
                                              :background "gray"
                                              :foreground "midnightblue"))))
     `(mode-line-inactive           ((,class (:box (:line-width -1
                                                    :style released-button)
                                              :background "gray"
                                              :foreground "gray30"
                                              :bold t))))
     ;; Escape and prompt faces
     `(minibuffer-prompt            ((,class (:weight bold
                                              :foreground ,basic-blue))))
     `(escape-glyph                 ((,class (:foreground ,basic-vermillion))))
     `(homoglyph                    ((,class (:foreground ,basic-vermillion))))
     `(error                        ((,class (:weight bold
                                              :slant italic
                                              :foreground ,basic-vermillion))))
     `(warning                      ((,class (:foreground ,basic-orange))))
     `(success                      ((,class (:foreground ,basic-bluegreen))))
     ;; Font lock faces
     `(font-lock-builtin-face       ((,class (:foreground ,main-builtin))))
     `(font-lock-keyword-face       ((,class (:weight bold
                                              :foreground ,main-keyword))))
     `(font-lock-comment-face       ((,class (:slant italic
                                              :foreground ,main-comment))))
     `(font-lock-string-face        ((,class (:foreground ,main-literal))))
     `(font-lock-function-name-face ((,class (:foreground ,main-function-name
                                              :weight bold))))
     `(font-lock-type-face          ((,class (:foreground ,main-type-name))))
     `(font-lock-constant-face      ((,class (:foreground ,main-label))))
     `(font-lock-variable-name-face ((,class (:foreground ,color_burgundy))))
     `(font-lock-preprocessor-face  ((,class (:foreground "red"))))
     ;; Button and link faces
     `(link                         ((,class (:underline t
                                              :foreground ,basic-blue))))
     `(link-visited                 ((,class (:underline t
                                              :foreground ,basic-lightpurple))))

     ;; Outline
     `(outline-1                    ((,class (:inherit nil
                                              :foreground ,basic-red))))
     `(outline-2                    ((,class (:inherit nil
                                              :foreground ,basic-yellow))))
     `(outline-3                    ((,class (:inherit nil
                                              :foreground ,basic-lightpurple))))
     `(outline-4                    ((,class (:inherit nil
                                              :foreground ,basic-blue))))
     `(outline-5                    ((,class (:inherit nil
                                              :foreground ,basic-orange))))
     `(outline-6                    ((,class (:inherit nil
                                              :foreground "CadetBlue1"))))
     `(outline-7                    ((,class (:inherit nil
                                              :foreground "aquamarine1"))))
     `(outline-8                    ((,class (:inherit nil
                                              :foreground "turquoise2"))))
     `(outline-9                    ((,class (:inherit nil
                                              :foreground "LightSteelBlue1"))))

     ;; org-mode
     `(org-agenda-date              ((,class (:foreground ,basic-red))))
     `(org-agenda-date-today        ((,class (:foreground ,basic-green))))
     `(org-agenda-structure         ((,class (:inherit ,basic-blue))))
     `(org-archived                 ((,class (:foreground ,valadoc-fg
                                              :weight bold))))
     `(org-block                    ((,class (:foreground ,valadoc-fg))))
     `(org-quote                    ((,class (:inherit font-lock-string-face))))
     `(org-verse                    ((,class (:inherit font-lock-string-face))))
     `(org-meta-line                ((,class (:inherit font-lock-comment-face))))
     `(org-block-begin-line         ((,class (:inherit org-meta-line))))
     `(org-block-background         ((,class (:inherit org-meta-line))))
     `(org-block-end-line           ((,class (:inherit org-meta-line))))
     `(org-checkbox                 ((,class (:background ,valadoc-bg
                                              :foreground ,valadoc-fg
                                              :box (:line-width 1
                                                    :style pressed-button)))))
     `(org-date                     ((,class (:inherit org-agenda-date))))
     `(org-date-selected            ((,class (:inherit font-lock-function-name-face))))
     `(org-deadline-announce        ((,class (:foreground ,valadoc-fg))))
     `(org-done                     ((,class (:foreground ,basic-bluegray
                                              :weight bold))))
     `(org-document-title           ((,class (:weight bold))))
     `(org-document-info            ((,class (:foreground ,basic-orange))))
     `(org-document-info-keyword    ((,class (:foreground ,basic-yellow))))
     `(org-ellipsis                 ((,class (:foreground ,valadoc-bg))))
     `(org-footnote                 ((,class (:foreground ,basic-bluegray
                                              :underline t))))
     `(org-formula                  ((,class (:foreground ,basic-yellow))))
     `(org-headline-done            ((,class (:foreground ,basic-lightblue))))
     `(org-hide                     ((,class (:foreground ,valadoc-bg))))
     `(org-level-1                  ((,class (:weight bold
                                              :foreground ,color_carrot_orange
                                              :height 1.8))))
     `(org-level-2                  ((,class (:weight bold
                                              :foreground ,color_carrot_orange
                                              :height 1.4))))
     `(org-level-3                  ((,class (:weight bold
                                              :foreground ,color_pannsy
                                              :height 1.2))))
     `(org-level-4                  ((,class (:weight bold
                                              :foreground ,color_pannsy))))
     `(org-level-5                  ((,class (:weight bold
                                              :foreground ,color_teal_green))))
     `(org-level-6                  ((,class (:weight bold
                                              :foreground ,color_teal_green))))
     `(org-level-7                  ((,class (:weight bold
                                              :foreground ,color_olive_drab))))
     `(org-level-8                  ((,class (:weight bold
                                              :foreground ,color_olive_drab))))
     `(org-level-9                  ((,class (:weight bold
                                              :foreground ,color_olive_drab))))
     `(org-level-10                 ((,class (:weight bold
                                              :foreground ,color_olive_drab))))
     `(org-level-11                 ((,class (:foreground ,color_violet))))
     `(org-level-12                 ((,class (:foreground ,color_violet))))
     `(org-link                     ((,class (:underline t
                                              :foreground ,basic-bluegray))))
     `(org-mode-line-clock          ((,class (:foreground ,basic-bluegray))))
     `(org-mode-line-clock-overrun  ((,class (:foreground ,basic-orange
                                              :weight bold))))
     `(org-scheduled                ((,class (:foreground ,basic-vermillion))))
     `(org-scheduled-previously     ((,class (:foreground ,basic-orange))))
     `(org-scheduled-today          ((,class (:foreground ,basic-bluegray))))
     `(org-special-keyword          ((,class (:inherit font-lock-doc-face))))
     `(org-table                    ((,class (:foreground ,valadoc-fg))))
     `(org-tag                      ((,class (:slant italic))))
     `(org-time-grid                ((,class (:foreground ,valadoc-bg))))
     `(org-todo                     ((,class (:foreground ,basic-orange
                                              :weight bold))))
     `(org-upcoming-deadline        ((,class (:inherit font-lock-keyword-face))))
     `(org-verbatim                 ((,class (:foreground ,valadoc-fg))))
     `(org-code                     ((,class (:foreground ,valadoc-fg
                                              :background ,valadoc-bg))))
     `(org-warning                  ((,class (:foreground ,basic-orange
                                              :weight bold
                                              :underline nil))))
     `(org-column                   ((,class (:background ,valadoc-bg))))
     `(org-column-title             ((,class (:background ,valadoc-bg
                                              :underline t
                                              :weight bold))))
     ;; Gnus faces
     `(gnus-group-news-1            ((,class (:weight bold
                                              :foreground ,basic-vermillion))))
     `(gnus-group-news-1-low        ((,class (:foreground ,basic-vermillion))))
     `(gnus-group-news-2            ((,class (:weight bold
                                              :foreground ,basic-orange))))
     `(gnus-group-news-2-low        ((,class (:foreground ,basic-orange))))
     `(gnus-group-news-3            ((,class (:weight bold
                                              :foreground ,basic-lightblue))))
     `(gnus-group-news-3-low        ((,class (:foreground ,basic-lightblue))))
     `(gnus-group-news-4            ((,class (:weight bold
                                              :foreground ,basic-lightpurple))))
     `(gnus-group-news-4-low        ((,class (:foreground ,basic-lightpurple))))
     `(gnus-group-news-5            ((,class (:weight bold
                                              :foreground ,basic-blue))))
     `(gnus-group-news-5-low        ((,class (:foreground ,basic-blue))))
     `(gnus-group-news-low          ((,class (:foreground ,basic-bluegreen))))
     `(gnus-group-mail-1            ((,class (:weight bold
                                              :foreground ,basic-vermillion))))
     `(gnus-group-mail-1-low        ((,class (:foreground ,basic-vermillion))))
     `(gnus-group-mail-2            ((,class (:weight bold
                                              :foreground ,basic-orange))))
     `(gnus-group-mail-2-low        ((,class (:foreground ,basic-orange))))
     `(gnus-group-mail-3            ((,class (:weight bold
                                              :foreground ,basic-lightblue))))
     `(gnus-group-mail-3-low        ((,class (:foreground ,basic-lightblue))))
     `(gnus-group-mail-low          ((,class (:foreground ,basic-bluegreen))))
     `(gnus-header-content          ((,class (:foreground ,basic-lightpurple))))
     `(gnus-header-from             ((,class (:weight bold
                                              :foreground ,basic-blue))))
     `(gnus-header-subject          ((,class (:foreground ,basic-orange))))
     `(gnus-header-name             ((,class (:foreground ,basic-lightblue))))
     `(gnus-header-newsgroups       ((,class (:foreground ,basic-vermillion))))

     ;; Message faces
     `(message-header-name          ((,class (:foreground ,basic-lightblue))))
     `(message-header-cc            ((,class (:foreground ,basic-vermillion))))
     `(message-header-other         ((,class (:foreground ,basic-bluegreen))))
     `(message-header-subject       ((,class (:foreground ,basic-orange))))
     `(message-header-to            ((,class (:weight bold
                                              :foreground ,basic-blue))))
     `(message-cited-text           ((,class (:slant italic
                                              :foreground ,basic-bluegreen))))
     `(message-separator            ((,class (:weight bold
                                              :foreground ,basic-lightpurple))))

     ;; Flyspell
     `(flyspell-duplicate           ((,class (:weight unspecified
                                              :foreground unspecified
                                              :slant unspecified
                                              :underline ,basic-orange))))
     `(flyspell-incorrect           ((,class (:weight unspecified
                                              :foreground unspecified
                                              :slant unspecified
                                              :underline ,basic-lightpurple)))))

    (custom-theme-set-variables
     'valadoc
     `(ansi-color-names-vector ["black" ,basic-vermillion ,basic-bluegreen ,basic-yellow
                                ,basic-blue ,basic-lightpurple ,basic-lightblue "white"]))))

(provide-theme 'valadoc)

;;; mito-zuki-light-theme.el ends here
