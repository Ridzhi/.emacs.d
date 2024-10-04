(use-package lsp-mode
	:ensure t
	:hook
	(rust-mode . lsp)
	:custom
	(setq lsp-rust-analyzer-binding-mode-hints t)
	:commands lsp)

(use-package company
	:ensure t
	:custom
	(company-idle-delay 0.5))

(use-package flycheck :ensure t)
