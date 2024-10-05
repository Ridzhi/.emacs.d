(use-package package
	:config
	(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
	(package-initialize))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-line-numbers t)
 '(package-selected-packages '(rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#3F3F3F" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 120 :width normal :foundry "nil" :family "JetBrains Mono")))))

(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(tool-bar-mode -1)


;; Themes
(use-package zenburn-theme
	:ensure t
	:config
	(load-theme 'zenburn t))

;; Programming
(use-package lsp-mode
	:ensure t
	:config
	(setq lsp-inlay-hint-enable t)
	(setq lsp-rust-analyzer-binding-mode-hints t)
	:hook
	(rust-mode . lsp)
	:commands lsp)

(use-package company
	:ensure t
	:config
	(setq company-idle-delay 0.5))

(use-package flycheck :ensure t)


(use-package rust-mode
	:ensure t
	:init
	(setq rust-mode-treesitter-derive t)
	:custom
	(rust-format-on-save t))

