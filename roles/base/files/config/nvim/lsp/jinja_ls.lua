---@brief
---
--- https://github.com/uros-5/jinja-lsp
---
--- Language server for Jinja templates.
---
--- `jinja-lsp` can be installed via `cargo`:
---
--- ```sh
--- cargo install jinja-lsp
--- ```

---@type vim.lsp.Config
return {
  cmd = { "jinja-lsp" },
  filetypes = { "jinja" },
  root_markers = { ".git" },
}
