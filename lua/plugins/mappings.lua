return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["L"] = { "<cmd>bprev<cr>", desc = "Go to previous tab" },
          ["H"] = { "<cmd>bnext<cr>", desc = "Go to next tab" },
        }
      },
    },
  },
}
