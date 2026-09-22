return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
}

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     style = "storm", -- "storm", "moon", "night", "day"
--   },
--   config = function(_, opts)
--     require("tokyonight").setup(opts)
--     vim.cmd.colorscheme("tokyonight")
--   end,
-- }
-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   priority = 1000,
--   compile = false,             -- enable compiling the colorscheme
--   undercurl = true,            -- enable undercurls
--   commentStyle = { italic = true },
--   functionStyle = {},
--   keywordStyle = { italic = true},
--   statementStyle = { bold = true },
--   typeStyle = {},
--   transparent = false,         -- do not set background color
--   dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--   terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--   colors = {                   -- add/modify theme and palette colors
--       palette = {},
--       theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--   },
--   overrides = function(colors) -- add/modify highlights
--       return {}
--   end,
--   theme = "wave",              -- Load "wave" theme
--   background = {               -- map the value of 'background' option to a theme
--       dark = "wave",           -- try "dragon" !
--       light = "lotus"
--   },
--
--   config = function(_, opts)
--       require("kanagawa").setup(opts)
--       vim.cmd.colorscheme("kanagawa")
--   end,
-- }
