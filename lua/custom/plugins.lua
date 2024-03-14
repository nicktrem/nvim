local plugins = {
  -- to setup the neovim config
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- To setup mason and to have
  -- a list of packages to be installed
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- For C/C++
        "clangd",
        "clang-format",

        --For Python
        "pyright",
        "mypy",
        "ruff",

        "shellcheck",
        "shfmt",
      },
    },
  },

  -- For Static Analysis using python
  {
    -- Use the null-ls (The Null Language Server)
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
}
return plugins

