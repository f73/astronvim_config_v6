return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map

          -- Override leader+x mapping for quickfix/list access introduced in https://github.com/AstroNvim/AstroNvim/commit/99c2b13df7b4943b3f82ca772db3dfb8f13f42e7
          ["<Leader>x"] = { ":x<cr>", desc = "Save and Close" },
          ["<Leader>xl"] = false,
          ["<Leader>xq"] = false,

          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["s"] = { "<cmd>HopChar1<CR>", desc = "Hop to Any Character" },
          -- Move current line / block with Alt-j/k ala vscode.
          ["<A-j>"] = { "<Esc>:move .+1<CR>==" },
          -- Move current line / block with Alt-j/k ala vscode.
          ["<A-k>"] = { "<Esc>:move .-2<CR>==" },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          ["<F5>"] = { "<cmd>MundoToggle<cr>", desc = "Undo History" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        o = {
          ["s"] = { "<cmd>HopChar1<CR>", desc = "Copy, Delete to Any Character" },
        },

        v = {
          ["s"] = { "<cmd>HopChar1<CR>", desc = "Copy, Delete to Any Character" },
          -- Move selected line / block of text in visual mode
          ["<A-j>"] = { ":move '>+1<CR>gv-gv" },
          ["<A-k>"] = { ":move '<-2<CR>gv-gv" },
        },
      },
    },
  },
}
