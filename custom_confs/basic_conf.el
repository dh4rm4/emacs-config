(require 'cc-mode)
(require 'package)


;; Warning policy
(setq warning-minimum-level :emergency)

;;+ ++++++++++++++++++++++++++++++++++++++++++++++++++
;; === GENERIC PACKAGES === ;;
;; --- Melpa installer
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; --- Auto Update Package
(unless (package-installed-p 'auto-package-update)
  (package-install 'auto-package-update))
(auto-package-update-at-time "16:20")

;; === BASICS === ;;
(set-language-environment "UTF-8")
(setq-default line-number-mode nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(global-set-key (kbd "DEL") 'backward-delete-char)
(setq-default c-backspace-function 'backward-delete-char)
(setq-default c-basic-offset 4)
(fset 'yes-or-no-p 'y-or-n-p) ; y-or-n-p makes answering questions faster
