;;+ ++++++++++++++++++++++++++++++++++++++++++++++++++
;; === IDE Like === ;;
;; --- AutoComplete
(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))
(global-auto-complete-mode t)

;; --- Highlighting remains after lsearch
(setq lazy-highlight-cleanup nil)

;; --- Org-mode
(unless (package-installed-p 'org)
  (package-install 'org))

;; --- enable clipboard in emacs
(setq x-select-enable-clipboard t)

;; --- Auto-completion
(ac-config-default)

;; --- show starting+ending brackets
(show-paren-mode 1)
(set-face-background 'show-paren-match "green")
(set-face-foreground 'show-paren-match "grey")

;; --- Remove spaces at the end of lines before saving file
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(put 'scroll-left 'disabled nil)

;; --- Jump to definition
(unless (package-installed-p 'dumb-jump)
  (package-install 'dumb-jump))
(dumb-jump-mode)
(global-set-key (kbd "C-M-z") 'dumb-jump-go)

;; --- Smex: buffer history
(unless (package-installed-p 'smex)
  (package-install 'smex))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; --- Rainbow-delimiters
;; Highlights delimiters such as parentheses, brackets or braces according to their depth
(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; --- Beacon Cursor
;; Whenever the window scrolls a light will shine on top of your cursor.
(unless (package-installed-p 'beacon)
  (package-install 'beacon))
(beacon-mode 1)

;; --- Color identifier
;; Highlights each source code identifier uniquely based on its name.
(unless (package-installed-p 'color-identifiers-mode)
  (package-install 'color-identifiers-mode))


;; --- Show current filepath
(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name)))
(global-set-key [C-f1] 'show-file-name)


;; --- Collapse/Expend block
(add-hook 'prog-mode-hook #'hs-minor-mode)
(global-set-key (kbd "C-c <right>") 'hs-show-block)
(global-set-key (kbd "C-c <left>") 'hs-hide-block)
(global-set-key (kbd "C-c <prior>") 'hs-hide-level)
