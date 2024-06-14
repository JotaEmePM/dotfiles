require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	--use 'Shatur/neovim-ayu'
--use 'shaunsingh/nord.nvim'
	use 'olivercederborg/poimandres.nvim'
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	}
end)
