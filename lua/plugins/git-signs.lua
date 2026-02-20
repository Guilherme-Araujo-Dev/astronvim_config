return {
	"lewis6991/gitsigns.nvim",
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol",
			delay = 500,
		},
	},
	-- 2. Criação do Atalho
	keys = {
		{
			"<Leader>xg",
			"<cmd>Gitsigns toggle_current_line_blame<CR>",
			desc = "Toggle Git Blame",
		},
	},
}
