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

-- copilot
map({ "n", "x" }, "<leader>cl", "<cmd> Lazy load copilot.vim  | Copilot <cr>")
map("i", "<C-m>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false, silent = true })
vim.g.copilot_no_tab_map = true
