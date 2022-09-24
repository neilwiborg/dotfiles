-- nvim-lspconfig
-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- C/C++ Language Server
require 'lspconfig'.clangd.setup{}
-- CSS Language Server
require 'lspconfig'.cssls.setup{
  capabilities = capabilities
}
-- HTML Language Server
require 'lspconfig'.html.setup{
  capabilities = capabilities
}
-- JSON Language Server
require 'lspconfig'.jsonls.setup{
  capabilities = capabilities
}
-- XML Language Server
require 'lspconfig'.lemminx.setup{}

-- nvim-dap

-- nvim-treesitter
require 'nvim-treesitter.configs'.setup{
  autotag = {
    enable = true
  }
}

-- nvim-cmp

-- telescope.nvim

-- LuaSnip

-- nvim-dap-ui

-- trouble.nvim
require 'trouble'.setup{}

-- nvim-notify
require 'notify'.setup{}
vim.notify = require 'notify'

-- dressing.nvim
require 'dressing'.setup{}

-- which-key.nvim

-- nvim-regexplainer

-- numb.nvim
require 'numb'.setup{}

-- range-highlight.nvim
require 'range-highlight'.setup{}

-- neovim-session-manager

-- project.nvim

-- luatab.nvim
require 'luatab'.setup{}

-- lualine.nvim
require 'lualine'.setup{}

-- nvim-navic

-- neoscroll.nvim
require 'neoscroll'.setup{}

-- hop.nvim

-- nvim-autopairs
require 'nvim-autopairs'.setup{}

-- nvim-ts-autotag
-- enabled with treesitter

-- gitsigns.nvim
require 'gitsigns'.setup{}

-- indent-blankline.nvim
require 'indent_blankline'.setup{}

-- Comment.nvim
require 'Comment'.setup{}

-- vimsence

-- rainbow
vim.cmd('let g:rainbow_active = 1')

-- darcula-solid.nvim
vim.cmd 'colorscheme darcula-solid'
