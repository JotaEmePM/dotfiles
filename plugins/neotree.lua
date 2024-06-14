vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1]])
vim.cmd([[nnoremap \ :Neotree reveal<cr>]])

-- If you want icons for diagnostic errors, you'll need to define them somewhere:
vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = " ", texthl = "DiagnosticSignHint" })

local config = {
	close_if_last_window = false,
	popup_border_style = "rounded",
	enable_git_status = true,
	enable_diagnostics = true,
	open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
	sort_case_insensitive = false,
	default_component_configs = {
		container = {
			enable_character_fade = true,
		},
		indent = {
			indent_size = 2,
			padding = 1,
			with_markers = true,
			indent_marker = "|",
			last_indent_marker = "└",
			hightlight = "NeoTreeIndentMarker",
			with_expanders = nil,
			expander_collapsed = "⏵",
			expander_expanded = "⏷",
			expander_highlight = "NeoTreeExpander",
		}
	}
}

require('neo-tree').setup(config)
