(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Adds requested by auto-complete
(add-to-list 'load-path "~/.emacs.d/")
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
;;(ac-config-default)

;;TODO: get this working. Think I give up...
;;(require 'gccsense)

;; CEDET
;;(load-file "~/cedet-1.1/common/cedet.el")
;;(global-ede-mode 1) ; Enable the Project management system
;;(semantic-load-enable-code-helpers) ; Enable prototype help and smart completion

;; MATLAB mode
;;(add-to-list 'load-path "~/progs/matlab-emacs/")
;;(require 'matlab-load)