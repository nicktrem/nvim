local none_ls = require('null-ls')

local opts = {
  sources = {
    -- For Python
    none_ls.builtins.diagnostics.mypy,
    none_ls.builtins.diagnostics.ruff,

    -- For C/C++
    none_ls.builtins.formatting.clang_format,

    -- For Shell
    none_ls.builtins.formatting.shfmt,
    none_ls.builtins.diagnostics.shellcheck,
  }
}
return opts
