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

(deftheme mito-zuki-light
  "Face colors suitable for red/green color-blind users.
The color palette is from B. Wong, Nature Methods 8, 441 (2011).
It is intended to provide good variability while being easily
differentiated by individuals with protanopia or deuteranopia.

Basic, Font Lock, Isearch, Gnus, Message, Flyspell, and
Ansi-Color faces are included.")

(let* ((class '((class color) (min-colors 89)))
       (default-fg "#202020")
       (default-bg "#F2F2F2")
       (atom-one-dark-accent "#528BFF")
       (atom-one-dark-fg "#ABB2BF")
       (atom-one-dark-bg "#282C34")
       (atom-one-dark-bg-1 "#121417")
       (doneburn-fg "#444444")
       (doneburn-bg-05 "#DDDDDD")
       (doneburn-yellow-2 "#AD934C")
       (space-fg "#CCCCCC")
       (newline-fg "lightsteelblue")
       (orange "#e69f00")
       (skyblue "#56b4e9")
       (bluegreen "#009e73")
       (yellow "#f8ec59")
       (blue "#0072b2")
       (vermillion "#d55e00")
       (redpurple "#cc79a7")
       (bluegray "#848ea9")
       (fringe-bg "#D0D0D0")
       (fringe-fg "saddlebrown"))
  (custom-theme-set-faces
   'mito-zuki-light
   `(default ((,class (:foreground ,default-fg :background ,default-bg))))
   `(cursor ((,class (:background "tomato"))))
   ;; Highlighting faces
   `(fringe ((,class (:background "#E0E0E0" :foreground "indianred"))))
   `(highlight ((,class (:foreground ,blue :background "#e5e5e5"))))
   `(region ((,class (:foreground unspecified :background ,yellow))))
   `(secondary-selection ((,class (:background "#e5e5e5"))))
   `(isearch ((,class (:foreground "white" :background ,vermillion))))
   `(lazy-highlight ((,class (:foreground "white" :background ,redpurple))))
   `(trailing-whitespace ((,class (:background ,vermillion))))
   `(whitespace-space ((,class (:background ,default-bg :foreground ,space-fg))))
   `(whitespace-trailing ((,class (:background ,default-bg :foreground ,space-fg))))
   `(whitespace-tab ((,class (:background ,default-bg :foreground ,space-fg))))
   `(whitespace-line ((,class (:background ,default-bg :foreground ,space-fg))))
   `(whitespace-newline ((,class (:background ,default-bg :foreground ,newline-fg))))
   ;; line numbers (Emacs 26.1 and above)
   `(line-number ((t (:foreground ,color_spinach_green :background ,color_ice_green))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,color_meadow_green))))
   ;; Mode line faces
   `(mode-line ((,class (:box (:line-width -1 :style released-button)
			      :background "gray" :foreground "midnightblue"))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
				       :background "gray"
				       :foreground "gray30"
                                       :bold t))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,blue))))
   `(escape-glyph ((,class (:foreground ,vermillion))))
   `(homoglyph ((,class (:foreground ,vermillion))))
   `(error ((,class (:weight bold :slant italic
			     :foreground ,vermillion))))
   `(warning ((,class (:foreground ,orange))))
   `(success ((,class (:foreground ,bluegreen))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,color_orchid_purple))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,color_oriental_blue))))
   `(font-lock-comment-face ((,class (:slant italic :foreground "rosybrown"))))
   `(font-lock-string-face ((,class (:foreground ,color_olive_green :background "#E0E4E4"))))
   `(font-lock-function-name-face ((,class (:foreground "olivedrab" :weight bold))))
   `(font-lock-type-face ((,class (:foreground "darkviolet"))))
   `(font-lock-constant-face ((,class (:foreground ,color_tomato_red))))
   `(font-lock-variable-name-face ((,class (:foreground ,atom-one-dark-bg-1))))
   `(font-lock-preprocessor-face ((,class (:foreground "red"))))
   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,blue))))
   `(link-visited ((,class (:underline t :foreground ,redpurple))))

   ;; Outline
   `(outline-1 ((,class (:inherit nil :foreground "SkyBlue1"))))
   `(outline-2 ((,class (:inherit nil :foreground ,yellow))))
   `(outline-3 ((,class (:inherit nil :foreground ,redpurple))))
   `(outline-4 ((,class (:inherit nil :foreground ,skyblue))))
   `(outline-5 ((,class (:inherit nil :foreground ,orange))))
   `(outline-6 ((,class (:inherit nil :foreground "CadetBlue1"))))
   `(outline-7 ((,class (:inherit nil :foreground "aquamarine1"))))
   `(outline-8 ((,class (:inherit nil :foreground "turquoise2"))))
   `(outline-9 ((,class (:inherit nil :foreground "LightSteelBlue1"))))

   ;; org-mode
   `(org-agenda-date           ((,class :foreground ,vermillion)))
   `(org-agenda-date-today     ((,class :foreground ,vermillion)))
   `(org-agenda-structure      ((,class :inherit alect-title)))
   `(org-archived              ((,class :foreground ,default-fg :weight bold)))
   `(org-block                 ((,class :foreground ,default-fg)))
   `(org-quote                 ((,class :inherit font-lock-string-face)))
   `(org-verse                 ((,class :inherit font-lock-string-face)))
   `(org-meta-line             ((,class :inherit font-lock-comment-face)))
   `(org-block-begin-line      ((,class :inherit org-meta-line)))
   `(org-block-background      ((,class :inherit org-meta-line)))
   `(org-block-end-line        ((,class :inherit org-meta-line)))
   `(org-checkbox              ((,class :background ,atom-one-dark-bg
                                        :foreground ,atom-one-dark-fg
                                        :box (:line-width 1
                                              :style pressed-button))))
   `(org-date                  ((,class :inherit org-agenda-date)))
   `(org-date-selected         ((,class :inherit font-lock-function-name-face)))
   `(org-deadline-announce     ((,class :foreground ,atom-one-dark-fg)))
   `(org-done                  ((,class :foreground ,bluegray
                                        :weight bold)))
   `(org-document-title        ((,class :weight bold)))
   `(org-document-info         ((,class :foreground ,orange)))
   `(org-document-info-keyword ((,class :foreground ,yellow)))
   `(org-ellipsis              ((,class :foreground ,doneburn-bg-05)))
   `(org-footnote              ((,class :foreground ,bluegray
                                        :underline t)))
   `(org-formula               ((,class :foreground ,yellow)))
   `(org-headline-done         ((,class :foreground ,skyblue)))
   `(org-hide                  ((,class :foreground ,default-bg)))
   `(org-level-1               ((,class :weight bold :foreground ,blue :height 1.8)))
   `(org-level-2               ((,class :weight bold :foreground "olive" :height 1.4)))
   `(org-level-3               ((,class :weight bold :foreground "orangered")))
   `(org-level-4               ((,class :weight bold :foreground "darkslateblue")))
   `(org-level-5               ((,class :weight bold :foreground "darkslateblue")))
   `(org-level-6               ((,class :weight bold :foreground ,doneburn-fg)))
   `(org-level-7               ((,class :weight bold :foreground ,doneburn-fg)))
   `(org-level-8               ((,class :weight bold :foreground ,bluegray)))
   `(org-link                  ((,class :underline t :foreground ,bluegray)))
   `(org-mode-line-clock       ((,class :foreground ,bluegray)))
   `(org-mode-line-clock-overrun ((,class :foreground ,orange :weight bold)))
   `(org-scheduled             ((,class :foreground ,vermillion)))
   `(org-scheduled-previously  ((,class :foreground ,orange)))
   `(org-scheduled-today       ((,class :foreground ,bluegray)))
   `(org-special-keyword       ((,class :inherit font-lock-doc-face)))
   `(org-table                 ((,class :foreground ,default-fg)))
   `(org-tag                   ((,class :slant italic)))
   `(org-time-grid             ((,class :foreground ,default-bg)))
   `(org-todo                  ((,class :foreground ,orange :weight bold)))
   `(org-upcoming-deadline     ((,class :inherit font-lock-keyword-face)))
   `(org-verbatim              ((,class :foreground ,default-fg)))
   `(org-code                  ((,class :foreground ,atom-one-dark-fg :background ,atom-one-dark-bg)))
   `(org-warning               ((,class :foreground ,orange
                                        :weight bold :underline nil)))
   `(org-column                ((,class :background ,default-bg)))
   `(org-column-title          ((,class :background ,default-bg
                                        :underline t :weight bold)))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,vermillion))))
   `(gnus-group-news-1-low ((,class (:foreground ,vermillion))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,orange))))
   `(gnus-group-news-2-low ((,class (:foreground ,orange))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,skyblue))))
   `(gnus-group-news-3-low ((,class (:foreground ,skyblue))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,redpurple))))
   `(gnus-group-news-4-low ((,class (:foreground ,redpurple))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,blue))))
   `(gnus-group-news-5-low ((,class (:foreground ,blue))))
   `(gnus-group-news-low ((,class (:foreground ,bluegreen))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,vermillion))))
   `(gnus-group-mail-1-low ((,class (:foreground ,vermillion))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,orange))))
   `(gnus-group-mail-2-low ((,class (:foreground ,orange))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,skyblue))))
   `(gnus-group-mail-3-low ((,class (:foreground ,skyblue))))
   `(gnus-group-mail-low ((,class (:foreground ,bluegreen))))
   `(gnus-header-content ((,class (:foreground ,redpurple))))
   `(gnus-header-from ((,class (:weight bold :foreground ,blue))))
   `(gnus-header-subject ((,class (:foreground ,orange))))
   `(gnus-header-name ((,class (:foreground ,skyblue))))
   `(gnus-header-newsgroups ((,class (:foreground ,vermillion))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,skyblue))))
   `(message-header-cc ((,class (:foreground ,vermillion))))
   `(message-header-other ((,class (:foreground ,bluegreen))))
   `(message-header-subject ((,class (:foreground ,orange))))
   `(message-header-to ((,class (:weight bold :foreground ,blue))))
   `(message-cited-text ((,class (:slant italic :foreground ,bluegreen))))
   `(message-separator ((,class (:weight bold :foreground ,redpurple))))
   ;; Flyspell
   `(flyspell-duplicate ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,orange))))
   `(flyspell-incorrect ((,class (:weight unspecified :foreground unspecified
				  :slant unspecified :underline ,redpurple)))))

  (custom-theme-set-variables
   'mito-zuki-light
   `(ansi-color-names-vector ["black" ,vermillion ,bluegreen ,yellow
			      ,blue ,redpurple ,skyblue "white"])))

(provide-theme 'mito-zuki-light)

;;; mito-zuki-light-theme.el ends here
