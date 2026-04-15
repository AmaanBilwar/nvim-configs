vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", "<cmd>Oil<cr>", { desc = "Open oil" })
vim.keymap.set("n", "<S-h>", function()
  require("oil").toggle_hidden()
end, { desc = "Oil: toggle hidden files" })
