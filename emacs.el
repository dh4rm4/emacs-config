; Load custom configuration
(package-initialize)

(if (file-exists-p "~/.emacs.d/custom_confs/basic_conf.el") (load-file "~/.emacs.d/custom_confs/basic_conf.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/ide_like.el") (load-file "~/.emacs.d/custom_confs/ide_like.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/shortcuts.el") (load-file "~/.emacs.d/custom_confs/shortcuts.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/prog_languages.el") (load-file "~/.emacs.d/custom_confs/prog_languages.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/style.el") (load-file "~/.emacs.d/custom_confs/style.el"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(yasnippet fireplace dad-joke tabbar yaml-mode web-mode undo-tree terraform-mode sublimity smex smart-mode-line rainbow-mode rainbow-delimiters powerline octo-mode nyan-mode nlinum magit helm-swoop go-mode focus-autosave-mode focus flycheck elscreen dumb-jump doom-modeline dockerfile-mode direx dired-rainbow dired-k csv-mode csv color-identifiers-mode browse-at-remote beacon auto-package-update auto-complete)))
 '(terraform-indent-level 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "color-136"))))
 '(font-lock-keyword-face ((t (:foreground "color-241"))))
 '(lazy-highlight ((t (:background "color-52"))))
 '(magit-diff-context-highlight ((t (:background "brightblack" :foreground "white"))))
 '(magit-diff-hunk-heading-highlight ((t (:background "color-19" :foreground "grey30"))))
 '(popup-face ((t (:inherit default :background "black" :foreground "color-243"))))
 '(popup-scroll-bar-background-face ((t (:background "black"))))
 '(popup-summary-face ((t (:inherit popup-face :background "black" :foreground "dimgray"))))
 '(popup-tip-face ((t (:background "brightblack" :foreground "black"))))
 '(whitespace-space ((t (:background "color-237" :foreground "lightgray")))))
