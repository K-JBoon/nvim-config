-- Plugins not provided by LazyNvim by default

return {
	-- add Nordic colorscheme
	{ "AlexvZyl/nordic.nvim" },

	-- Configure LazyVim to load Nordic
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "nordic",
		},
	},

	{
		-- Install markdown preview, use npx if available.
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function(plugin)
			if vim.fn.executable "npx" then
				vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
			else
				vim.cmd [[Lazy load markdown-preview.nvim]]
				vim.fn["mkdp#util#install"]()
			end
		end,
		init = function()
			if vim.fn.executable "npx" then vim.g.mkdp_filetypes = { "markdown" } end
		end,
	},
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
			explorer = {
				-- your explorer configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			},
			picker = {
				cwd = vim.fn.getcwd(),
				filter = {
					cwd = true
				},
				sources = {
					explorer = {
						autochdir = false
					}
				}
			}
		}
	}
}
