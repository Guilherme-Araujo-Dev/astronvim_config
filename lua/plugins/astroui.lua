-- if true then
-- 	return {}
-- end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

-- Obtém o valor da variável de ambiente TERM
local term_type = vim.env.TERM
-- Ou: local term_type = os.getenv("TERM")

-- Temas
local fallback_theme = "industry" -- TTY Puro (e.g., TERM é 'linux')
local kitty_theme = "catppuccin-frappe" -- Kitty (e.g., TERM é 'xterm-kitty')

local colorscheme

-- Verifica se está rodando no Kitty. O TERM é tipicamente "xterm-kitty" no Kitty.
if term_type == "xterm-kitty" then
	colorscheme = kitty_theme
else
	-- Caso contrário, usa o tema fallback para TTY puro ou outros terminais
	colorscheme = fallback_theme
end

---@type LazySpec
return {
	"AstroNvim/astroui",
	---@type AstroUIOpts
	opts = {
		-- change colorscheme
		colorscheme = colorscheme,
		-- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
		highlights = {
			init = { -- this table overrides highlights in all themes
				-- Normal = { bg = "#000000" },
			},
			astrodark = { -- a table of overrides/changes when applying the astrotheme theme
				-- Normal = { bg = "#000000" },
			},
		},
		-- Icons can be configured throughout the interface
		icons = {
			-- configure the loading of the lsp in the status line
			LSPLoading1 = "⠋",
			LSPLoading2 = "⠙",
			LSPLoading3 = "⠹",
			LSPLoading4 = "⠸",
			LSPLoading5 = "⠼",
			LSPLoading6 = "⠴",
			LSPLoading7 = "⠦",
			LSPLoading8 = "⠧",
			LSPLoading9 = "⠇",
			LSPLoading10 = "⠏",
		},
	},
}
