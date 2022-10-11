-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
local function get_config(name)
  return string.format('require("config/%s")', name)
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})


return require('packer').startup(function(use)
  -- Packer can manage itself
  -- https://github.com/wbthomason/packer.nvim
  use 'wbthomason/packer.nvim'

  -- Color scheme
  -- More color schemes https://github.com/rafi/awesome-vim-colorschemes
  -- https://github.com/EdenEast/nightfox.nvim
  use {
    'EdenEast/nightfox.nvim',
    config = get_config('theme')
  }

  -- Statusline
  -- https://github.com/nvim-lualine/lualine.nvim
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true },
    config = get_config('lualine')
  }

  -- Dashboard
  -- https://github.com/glepnir/dashboard-nvim
  use {
    'glepnir/dashboard-nvim',
    config = get_config('dashboard')
  }

  -- Nvim Tree
  -- https://github.com/kyazdani42/nvim-tree.lua
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    config = get_config('tree')
  }

  -- Telescope
  -- https://github.com/nvim-telescope/telescope.nvim#getting-started
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = get_config('telescope')
  }

  -- Telescope file browser
  -- https://github.com/nvim-telescope/telescope-file-browser.nvim
  use { 
     "nvim-telescope/telescope-file-browser.nvim",
  }

  -- Telescope projects
  -- https://github.com/ahmedkhalf/project.nvim
  use {
    'ahmedkhalf/project.nvim',
    config = get_config('projects'),
  }

  -- Treesitter
  -- https://github.com/nvim-treesitter/nvim-treesitter#quickstart
  use {
    'nvim-treesitter/nvim-treesitter',
    config = get_config('treesitter')
  }

  -- LSPConfig
  -- https://github.com/neovim/nvim-lspconfig
  use {
    'neovim/nvim-lspconfig',
    config = get_config('lspconfig')
  }
end)
