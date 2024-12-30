return {

  { "L3MON4D3/LuaSnip", enabled = false },
  { "rafamadriz/friendly-snippets", enabled = false },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      -- Remove snippet-related sources
      opts.sources = cmp.config.sources(vim.tbl_filter(function(source)
        return source.name ~= "luasnip"
      end, opts.sources))
      -- Disable snippet expansion
      opts.snippet = {
        expand = function() end,
      }

      return opts
    end,
  },
}
