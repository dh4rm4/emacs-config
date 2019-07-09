;;+ ++++++++++++++++++++++++++++++++++++++++++++++++++
;; === Languages === ;;
;; --- Golang mode
(unless (package-installed-p 'go-mode)
  (package-install 'go-mode))

;; --- Yaml mode
(unless (package-installed-p 'yaml-mode)
  (package-install 'yaml-mode))

;; --- Web-mode
;; highlight/indent code inside HTML balise
(unless (package-installed-p 'web-mode)
  (package-install 'web-mode))

;; --- Dockerfile mode
(unless (package-installed-p 'dockerfile-mode)
  (package-install 'dockerfile-mode))
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;; -- Automatic indentation for c-modes (after pressing tab)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

;; === HashiCorp === ;;
;; --- Terraform mode
(unless (package-installed-p 'terraform-mode)
  (package-install 'terraform-mode))
(custom-set-variables
  '(terraform-indent-level 4))

;; --- HCL mode
(unless (package-installed-p 'hcl-mode)
  (package-install 'hcl-mode))
(custom-set-variables
  '(terraform-indent-level 4))

