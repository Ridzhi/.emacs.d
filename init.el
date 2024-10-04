(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/rust.el")
(load "~/.emacs.d/lsp.el")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
