local none_ls = require('none-ls')

local opts = {
  sources = {
    -- For Python
    none_ls.builtins.diagnostics.mypy,
    none_ls.builtins.diagnostics.ruff,
  }
}
return opts
