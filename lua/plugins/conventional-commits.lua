return {
	"zerbiniandrea/conventional-commits.nvim",
	cmd = "ConventionalCommit",
	keys = {
		{ "<leader>gm", "<cmd>ConventionalCommit<cr>", desc = "Conventional Commit" },
	},
	config = function()
		require("conventional-commits").setup({
			show_preview = true,
			show_emoji_step = false,
		})
	end,
}
