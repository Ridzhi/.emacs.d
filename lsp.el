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
