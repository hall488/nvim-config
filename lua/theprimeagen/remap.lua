
-- Set space as the leader key, initiating leader key sequences
vim.g.mapleader = " "

-- Open the command-line window with `:Ex` using leader key followed by "pv"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move the selected block of text one line down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Move the selected block of text one line up in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down half a page and center the cursor line in the viewport
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Scroll up half a page and center the cursor line in the viewport
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move to next search result and center the line with slight vertical offset
vim.keymap.set("n", "n", "nzzzv")

-- Move to previous search result and center the line with slight vertical offset
vim.keymap.set("n", "N", "Nzzzv")

-- Start collaborative editing session using 'vim-with-me'
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)

-- Stop collaborative editing session using 'vim-with-me'
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Replace and paste over a selection in visual mode without yanking replaced text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy selected text to system clipboard in normal and visual mode
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Copy the entire line to system clipboard in normal mode
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Cut selected text to black hole register in normal and visual mode
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Leave insert mode quickly using Ctrl-c
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable the 'Q' command in normal mode (typically enters Ex mode)
vim.keymap.set("n", "Q", "<nop>")

-- Open tmux sessionizer in a new tmux window
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format code using built-in LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Navigate through errors and warnings in the code
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Start a search and replace for the word under the cursor across the whole file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Insert error handling snippet for Go programming language
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- Open packer.lua configuration file from a predefined path
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");

-- Run a custom command 'make_it_rain' in the CellularAutomaton plugin
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Source the current Vim script
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
