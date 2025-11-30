return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")

    wk.setup({
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
          suggestions = 20,
        },
        presets = {
          operators = false,
          motions = true,
          text_objects = true,
          windows = true,
          nav = true,
          z = true,
          g = true,
        },
      },
      window = {
        border = "rounded",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 2, 2, 2, 2 },
        winblend = 0
      },
      layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "left",
      },
      ignore_missing = true,
      hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
      show_help = true,
      triggers = "auto",
      triggers_blacklist = {
        i = { "j", "k" },
        v = { "j", "k" },
      },
    })

    -- Register which-key mappings
    wk.register({
      f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
        b = { "<cmd>Telescope buffers<cr>", "Buffers" },
        h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
        r = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
        c = { "<cmd>Telescope commands<cr>", "Commands" },
      },
      e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
      o = { "<cmd>NvimTreeFocus<cr>", "Focus Explorer" },
      h = {
        name = "git hunks",
        s = { "Stage Hunk" },
        r = { "Reset Hunk" },
        S = { "Stage Buffer" },
        u = { "Undo Stage Hunk" },
        R = { "Reset Buffer" },
        p = { "Preview Hunk" },
        b = { "Blame Line" },
        d = { "Diff This" },
        D = { "Diff This ~" },
      },
      t = {
        name = "toggle",
        b = { "Toggle Blame" },
        d = { "Toggle Deleted" },
      },
      c = {
        a = { "Code Action" },
      },
      r = {
        n = { "Rename" },
      },
    }, { prefix = "<leader>" })
  end,
}