vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", "<cmd>Oil<cr>")
vim.keymap.set("n", "<leader>.", function()
  require("oil").toggle_hidden()
end, { desc = "Oil: toggle hidden files" })
