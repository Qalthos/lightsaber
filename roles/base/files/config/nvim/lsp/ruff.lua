return {
  cmd = { 'ruff', 'server' },
  root_markers = { 'pyproject.toml', '.git' },
  filetypes = { 'python' },
  capabilities = {
    general = {
      positionEncodings = { "utf-16" },
    },
  },
}
