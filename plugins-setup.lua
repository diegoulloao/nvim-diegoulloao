-- require autosync when saving this file
local packer_bootstrap = require("diegoulloao.autosync")

-- call packer in safety mode
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- plugins
return packer.startup(function(use)
  -- general
  use("wbthomason/packer.nvim") -- packer
  use("nvim-lua/plenary.nvim") -- lua functions library

  -- ide
  use("nvim-tree/nvim-tree.lua") -- file explorer
  use("nvim-lualine/lualine.nvim") -- status line
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- telescope finder
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- fzf sorter for telescope
  use("lukas-reineke/indent-blankline.nvim") -- indentation lines
  use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" }) -- buffer tabs
  use({ "j-hui/fidget.nvim", tag = "legacy" }) -- lsp progress

  -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion
  use("hrsh7th/cmp-buffer") -- words completion for the current buffer
  use("hrsh7th/cmp-path") -- path completion

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for snippets autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- lsp servers managers
  use("williamboman/mason.nvim") -- package manager for lsp servers
  use("williamboman/mason-lspconfig.nvim") -- easier integration for mason and lsp servers

  -- lsp servers configurations
  use("neovim/nvim-lspconfig") -- lsp servers quickstart configurations
  use("hrsh7th/cmp-nvim-lsp") -- lsp servers integration with cmp autocompletion
  use({ "nvimdev/lspsaga.nvim", after = "nvim-lspconfig" }) -- enhanced lsp server autocompletion for cmp ui
  use("jose-elias-alvarez/typescript.nvim") -- further functionallity for the typescript lsp server
  use("onsails/lspkind.nvim") -- vscode like icons for the cmp autocompletion window

  -- formatting and linting
  use("jose-elias-alvarez/null-ls.nvim") -- improve cmp lsp to add diagnostics, formatters, code-actions
  use("jayp0521/mason-null-ls.nvim") -- integration of null-ls for mason
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      -- ts update
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  }) -- improve code highlighting

  -- utils
  use("christoomey/vim-tmux-navigator") -- tmux navigation
  use("szw/vim-maximizer") -- maximizes and restores the current pane
  use("tpope/vim-surround") -- surrounds words inside characters and replaces them
  use("numToStr/Comment.nvim") -- comments
  use("windwp/nvim-autopairs") -- auto close parenthesis, brackers, quotes, etc
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- auto close html tags
  use("folke/todo-comments.nvim") -- todo comments
  use("JoosepAlviste/nvim-ts-context-commentstring") -- comments on different contexts support
  use("ethanholz/nvim-lastplace") -- memorize last cursor position in the buffer
  use("NvChad/nvim-colorizer.lua") -- colorize hex, rgb, rgba in the buffer
  use("diegoulloao/nvim-file-location") -- copy file location and line
  use("nvim-treesitter/nvim-treesitter-context") -- displays scope context at the top
  use("ahmedkhalf/project.nvim") -- projects extension for telescope

  -- integration
  use("lewis6991/gitsigns.nvim") -- git signs for buffer
  use("akinsho/toggleterm.nvim", { tag = "*" }) -- terminal
  use("gpanders/editorconfig.nvim") -- editor config
  use("rcarriga/nvim-notify") -- notifications

  -- themes
  use("bluz71/vim-nightfly-guicolors")
  use("Shatur/neovim-ayu")

  -- icons
  use("nvim-tree/nvim-web-devicons") -- devicons

  -- dashboard
  use("glepnir/dashboard-nvim") -- dashboard

  if packer_bootstrap then
    require("packer").sync()
  end
end)
