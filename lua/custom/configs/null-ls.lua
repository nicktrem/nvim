local null_ls = require('null-ls')

local opts = {
  sources = {
    -- For Python
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnostics.ruff,
  }
}
return opts
