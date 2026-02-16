return {
  "kdheepak/lazygit.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("lazygit").setup({})

    vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Open lazygit" })
  end,
}
