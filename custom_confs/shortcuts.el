;;+ ++++++++++++++++++++++++++++++++++++++++++++++++++
;; === SHORTCUTS === ;;

;; --- replace killing all buffer, by just the current one
(global-set-key (kbd "C-x k") 'kill-this-buffer)


;; --- WINDOWS ACTIONS ---
;; --- Delete current window
(global-set-key (kbd "C-x w") 'delete-window)

;; --- Spliter
(defun empty-current-window ()
  (interactive)
  (let (($buf (generate-new-buffer "untitled")))
    (switch-to-buffer $buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)
    $buf
    ))

(defun split-vertically ()
  (interactive)
  (split-window-right)
  (windmove-right)
  (empty-current-window)
  )

(defun split-horizontally ()
  (interactive)
  (split-window-below)
  (windmove-down)
  (empty-current-window)
  )

(global-set-key (kbd "C-M-@") 'split-vertically)
(global-set-key (kbd "M-SPC") 'split-horizontally)
;(windmove-default-keybindings)  ; Uses [Shift + arrows]
