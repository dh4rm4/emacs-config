; Load custom configuration
(package-initialize)

(if (file-exists-p "~/.emacs.d/custom_confs/42_header_maker/init.el") (load-file "~/.emacs.d/custom_confs/42_header_maker/init.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/basic_conf.el") (load-file "~/.emacs.d/custom_confs/basic_conf.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/ide_like.el") (load-file "~/.emacs.d/custom_confs/ide_like.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/shortcuts.el") (load-file "~/.emacs.d/custom_confs/shortcuts.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/prog_languages.el") (load-file "~/.emacs.d/custom_confs/prog_languages.el"))
(if (file-exists-p "~/.emacs.d/custom_confs/style.el") (load-file "~/.emacs.d/custom_confs/style.el"))
