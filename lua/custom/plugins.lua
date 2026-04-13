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

        -- For TypeScript
        "typescript-language-server",

        -- For Solidity
        "solidity-ls",

        "shellcheck",
        "shfmt",
      },
    },
  },

  -- For diagnostics and formatting
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = {"python", "c", "cpp", "sh", "bash"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
}
return plugins

