require "nvchad.mappings"

local map = vim.keymap.set

-- save
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- harpoon
-- local mark = require("harpoon.mark")
-- local ui = require("harpoon.ui")

-- vim.keymap.set("n", "<leader>a", mark.add_file)
-- vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu)
--
-- vim.keymap.set("n", "<C-f>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)

-- vertical movement
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- neovim settings
map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end)

-- jupynium.nvim
map({ "n", "x" }, "<leader>jl", "<cmd> Lazy load jupynium.nvim  | JupyniumStartAndAttachToServer <cr>")
map({ "n", "x" }, "<leader>jx", "<cmd> JupyniumExecuteSelectedCells <cr>")
map({ "n", "x" }, "<leader>jc", "<cmd> JupyniumClearSelectedCellsOutputs <cr>")
map({ "n", "x" }, "<leader>jj", "<cmd> JupyniumScrollToCell <cr> ")
map({ "n", "x" }, "<leader>ju", "<cmd> JupyniumScrollUp <cr>")
map({ "n", "x" }, "<leader>jd", "<cmd> JupyniumScrollDown <cr>")
map({ "n", "x" }, "<leader>jr", "<cmd> JupyniumKernelRestart <cr>")
