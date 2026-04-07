return {
  "catppuccin/nvim",
  name = "catppuccin",
  ---@type CatppuccinOptions
  opts = {
    flavour = "macchiato",
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      dap = true,
      dap_ui = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = true,
      markdown = true,
      mason = true,
      native_lsp = { enabled = true },
      neotree = true,
      notify = true,
      semantic_tokens = true,
      symbols_outline = true,
      telescope = true,
      treesitter = true,
      ts_rainbow = false,
      ufo = true,
      which_key = true,
      window_picker = true,
    },
  },
  specs = {
    {
      "akinsho/bufferline.nvim",
      optional = true,
      opts = function(_, opts)
        return require("astrocore").extend_tbl(opts, {
          highlights = require("catppuccin.groups.integrations.bufferline").get(),
        })
      end,
    },
  },
}
