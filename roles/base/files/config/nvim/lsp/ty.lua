---@brief
---
--- https://github.com/astral-sh/ty
---
--- A Language Server Protocol implementation for ty, an extremely fast Python type checker and language server, written in Rust.
---
--- For installation instructions, please refer to the [ty documentation](https://github.com/astral-sh/ty/blob/main/README.md#getting-started).

---@type vim.lsp.Config
return {
  cmd = { 'ty', 'server' },
  root_markers = { 'pyproject.toml', 'requirements.txt', 'setup.cfg', 'setup.py', 'ty.toml', '.git' },
  filetypes = { 'python' },
}
