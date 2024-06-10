return {
	{
	"windwp/nvim-ts-autotag",

	config = function ()
		require('nvim-ts-autotag').setup({
			aliases = {
					["templ"] = "html"
			},
			opts = {
				-- Defaults
				enable_close = true, -- Auto close tags
				enable_rename = true, -- Auto rename pairs of tags
				enable_close_on_slash = true -- Auto close on trailing </
			},
				-- also override individual filetype configs, these take priority.
				-- empty by default, useful if one of the "opts" global settings
				-- doesn't work well in a specific filetype
				per_filetype = {
				["html"] = {
				  enable_close = true
				},
				["templ"] = {
				  enable_close = true
				}
			}
		})
	end
	},
	{
	"m4xshen/autoclose.nvim",

	config = function ()
		require("autoclose").setup({})
	end
	}
}
