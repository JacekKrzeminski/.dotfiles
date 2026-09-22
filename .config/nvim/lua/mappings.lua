local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>w", "<cmd>w!<CR>", opts)

keymap("n", "<C-J>", "<C-w><C-j>", opts)
keymap("n", "<C-K>", "<C-w><C-k>", opts)
keymap("n", "<C-L>", "<C-w><C-l>", opts)
keymap("n", "<C-H>", "<C-w><C-h>", opts)


keymap("n", "<leader>h", function()
  vim.o.hlsearch = not vim.o.hlsearch
end, opts)

keymap("v", "J", ":m '>+1<CR>gv=gv", {desc="moves lines down in visual selection"})
keymap("v", "K", ":m '<-2<CR>gv=gv", {desc="moves lines up in visual selection"})

-- next search result to unfold any folds
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- shift lines after selecting them once
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("n", "<leader>=", vim.lsp.buf.format)

-- deleted character not in clipboard
keymap("n", "x", '"_x', opts)

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc="Replace word under cursor"})

keymap("n", "<leader>ex", vim.cmd.Ex)
keymap("n", "<leader>v", vim.cmd.Vex)

keymap("n", "<leader>d", vim.diagnostic.open_float, {desc = "Show diagnostics under cursor"})
keymap("n", "<leader>D", vim.diagnostic.setloclist, {desc = "Show diagnostics for the current buffer"})
