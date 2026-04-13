return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = { "icon" },
			confirm_single_subdir = true,
			explorer = {
				hl = "Dash",
			},
			view_options = {
				show_hidden = false,
			},
		})

		vim.keymap.set("n", "<leader>e", "<cmd>Oil --float<cr>", { desc = "Open parent directory" })
		vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
	end,
}