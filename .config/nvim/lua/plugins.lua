local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- plugin manager
  use 'wbthomason/packer.nvim'

  -- Language Server Protocol
  use 'neovim/nvim-lspconfig'

  -- Debug Adapter Protocol
  use 'mfussenegger/nvim-dap'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Completion engine
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'

  -- Telescope fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  -- Telescope extensions:
  -- fzf for Telescope
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  -- File browser
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Snippets manager
  use 'L3MON4D3/LuaSnip'

  -- UI for DAP
  use {
    'rcarriga/nvim-dap-ui',
    requires = 'mfussenegger/nvim-dap'
  }

  -- Error list
  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- UI for notifications
  use 'rcarriga/nvim-notify'

  -- UI for entering text
  use 'stevearc/dressing.nvim'

  -- display all keybinds
  use 'folke/which-key.nvim'

  -- regex explainer
  use {
    'bennypowers/nvim-regexplainer',
    requires = {
      'nvim-treesitter/nvim-treesitter',
      'MunifTanjim/nui.nvim'
    }
  }

  -- peek line before going there
  use 'nacro90/numb.nvim'

  -- show range of lines being selected in command
  use {
    'winston0410/range-highlight.nvim',
    requires = 'winston0410/cmd-parser.nvim'
  }

  -- save folder and buffers as session
  use 'Shatur/neovim-session-manager'

  -- save projects
  use 'ahmedkhalf/project.nvim'

  -- tabline
  use {
    'alvarosevilla95/luatab.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- scope indicator for statusline
  use {
    'SmiteshP/nvim-navic',
    requires = 'neovim/nvim-lspconfig'
  }

  -- smooth scrolling
  use 'karb94/neoscroll.nvim'

  -- quick movement
  use {
    'phaazon/hop.nvim',
    branch = 'v1'
  }

  -- auto pair braces/quotes
  use 'windwp/nvim-autopairs'

  -- auto pair tags
  use 'windwp/nvim-ts-autotag'

  -- git signs in gutter
  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  -- show lines with indentation
  use 'lukas-reineke/indent-blankline.nvim'

  -- comment lines easily
  use 'numToStr/Comment.nvim'

  -- Discord rich presence
  use 'vimsence/vimsence'

  -- color parentheses
  use 'luochen1990/rainbow'

  -- darcula colorscheme
  use {
    'briones-gabriel/darcula-solid.nvim',
    requires = 'rktjmp/lush.nvim'
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
