;; === STYLES === ;;
;; --- generic
(setq-default c-default-style "linux")
(set-foreground-color "#989898")
(set-face-foreground 'font-lock-comment-face "#2D8A2D")
(put 'downcase-region 'disabled nil)

;; --- faces custom color
(custom-set-faces
 '(font-lock-function-name-face ((t (:foreground "color-136"))))
 '(font-lock-keyword-face ((t (:foreground "color-241"))))

 ;; --- auto-complete popup style
'(popup-face ((t (:inherit default :background "black" :foreground "color-243"))))
'(popup-scroll-bar-background-face ((t (:background "black"))))
'(popup-summary-face ((t (:inherit popup-face :background "black" :foreground "dimgray"))))
'(custom-group-tag ((t (:inherit variable-pitch :foreground "color-26" :weight bold :height 1.2))))
'(custom-variable-tag ((t (:foreground "color-27" :weight bold))))
'(font-lock-function-name-face ((t (:foreground "color-27"))))
'(popup-tip-face ((t (:background "brightblack" :foreground "black")))))

;; --- Remove menu bar
(menu-bar-mode -1)

;; --- Set default font
(set-face-attribute 'default nil
					:family "Source Code Pro"
					:height 110
					:weight 'normal
                    :width 'normal)

;; --- Below bar color
(set-face-foreground 'mode-line "#606060")
(set-face-background 'mode-line "#202020")
(set-face-foreground 'mode-line-inactive "#606060")
(set-face-background 'mode-line-inactive "#202020")

;; --- add space after linum
(setq linum-format "%d ")


