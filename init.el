(use-package package
  :config
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode t)
 '(display-line-numbers t)
 '(package-selected-packages
   '(lsp-ui company-files php-mode kanagawa-themes doom-themes timu-macos-theme dracula-theme solarized-theme monokai-theme go-mode rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#3F3F3F" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 130 :width normal :foundry "nil" :family "JetBrains Mono")))))

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq inhibit-startup-screen t)
(setq require-final-newline t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(global-hl-line-mode 1)
;; switch windows by S-arrow
(windmove-default-keybindings 'meta)

(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  :custom
  (which-key-idle-delay 0.3)
  :config
  (setq which-key-popup-type 'side-window)
  (which-key-setup-side-window-right))

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))


(use-package dashboard
  :ensure t
  :custom
  (dashboard-startup-banner 'logo)
  (dashboard-center-content t)
  (dashboard-show-shortcuts nil)
  (dashboard-set-heading-icons t)
  (dashboard-icon-type 'all-the-icons)
  (dashboard-set-file-icons t)
  (dashboard-items '(
		     (projects . 20)
                     (recents . 10)
                     (bookmarks . 50)
                     ))
  (dashboard-item-generators '(
			       (projects . dashboard-insert-projects)
			       (recents . dashboard-insert-recents)
                               (bookmarks . dashboard-insert-bookmarks)
                              ))
  :config
  (dashboard-setup-startup-hook))

(use-package yasnippet
  :ensure t)

(yas-global-mode 1)

;; Bindings
(global-set-key [remap list-buffers] 'ibuffer)


;; Themes
;;(use-package zenburn-theme
;;	:ensure t
;;	:config
;;	(load-theme 'zenburn t))

;; Themes
;;(use-package kaolin-themes
;;	:ensure t
;;	:config
;;	(load-theme 'kaolin-valley-dark t))

(load-theme 'zenburn t)

;; Programming
(use-package lsp-mode
  :ensure t
  :config
  (setq lsp-inlay-hint-enable t)
  (lsp-enable-which-key-integration t)
  :hook
  (rust-mode . lsp)
  :commands lsp)

(use-package lsp-ui :ensure t)

(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)


(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0.5))

(use-package flycheck :ensure t)

(use-package rust-mode
  :ensure t
  :init
  (setq rust-mode-treesitter-derive t)
  :config
  (setq lsp-rust-analyzer-binding-mode-hints t)
  :custom
  (rust-format-on-save t))

(use-package go-mode
  :ensure t
  :hook
  (go-mode . lsp-deferred))

(use-package php-mode
  :ensure t
  :hook
  (php-mode . lsp))
