return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier.with({
            extra_args = { "--tab-width", "2", "--semi", "true" },
          }),
        },
      })
    end,
  },
}
