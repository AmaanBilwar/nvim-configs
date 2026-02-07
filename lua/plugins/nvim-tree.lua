return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local api = require("nvim-tree.api")

		local function on_attach(bufnr)
			api.config.mappings.default_on_attach(bufnr)
			vim.keymap.set("n", "s", api.node.open.horizontal, { buffer = bufnr, desc = "Open: Horizontal Split" })
			vim.keymap.set("n", "v", api.node.open.vertical, { buffer = bufnr, desc = "Open: Vertical Split" })
			vim.keymap.set("n", "<C-w>s", api.node.open.horizontal, { buffer = bufnr, desc = "Open: Horizontal Split" })
			vim.keymap.set("n", "<C-w>v", api.node.open.vertical, { buffer = bufnr, desc = "Open: Vertical Split" })
		end

		require("nvim-tree").setup({
			on_attach = on_attach,
			view = {
				width = 30,
				side = "left",
			},
			renderer = {
				indent_markers = { enable = true },
			},
			filters = {
				dotfiles = false,
			},
			git = {
				enable = true,
			},
		})

		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file tree" })
	end,
}
