(use-package rust-mode
	:ensure t
	:init
	(setq rust-mode-treesitter-derive t)
	:custom
	(rust-format-on-save t))
