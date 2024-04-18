return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- ["L"] = { "<cmd>bprev<cr>", desc = "Go to previous tab" },
          -- ["H"] = { "<cmd>bnext<cr>", desc = "Go to next tab" },

          -- navigate buffer tabs with `H` and `L`
          L = {
            function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
            desc = "Next buffer",
          },
          H = {
            function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
            desc = "Previous buffer",
          },
          ["<Leader>H"] = {
            function()
              require("harpoon"):list():append()
            end,
            desc = "Harpoon File",
          },
          ["<Leader>h"] = {
            function()
              local harpoon = require("harpoon")
              harpoon.ui:toggle_quick_menu(harpoon:list())
            end,
            desc = "Harpoon Quick Menu",
          },
        },
      },
    },
  },
}
