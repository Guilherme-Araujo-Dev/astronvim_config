if true then
	return {}
end

return {
	"mfussenegger/nvim-dap",
	config = function(plugin, opts)
		-- Carrega a configuração padrão do AstroNvim
		require("astronvim.plugins.configs.nvim-dap")(plugin, opts)

		local dap = require("dap")

		-- Configura o adaptador do Firefox
		dap.adapters.firefox = {
			type = "executable",
			command = "node",
			-- O caminho pode variar levemente dependendo do seu SO, mas o Mason instala aqui por padrão:
			args = { vim.fn.stdpath("data") .. "/mason/packages/firefox-debug-adapter/dist/adapter.bundle.js" },
		}
	end,
}
