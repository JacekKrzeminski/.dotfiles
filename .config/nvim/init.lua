require("settings")
require("mappings")
require("lazy_setup")

vim.cmd.colorscheme("catppuccin-nvim")

vim.lsp.config("clangd", {
    cmd = {"clangd-20"}
})
vim.lsp.enable("clangd")
