local map = require("astrocore").set_mappings

return map({
	-- Normal mode
	n = {
		["<Leader>xt"] = { "<cmd>TSImportAll<CR>", desc = "Execute TSImportAll" },
		-- adicione outros mapeamentos aqui...
	},
})
