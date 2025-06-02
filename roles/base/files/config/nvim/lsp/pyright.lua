return {
  cmd = { 'pyright-langserver', '--stdio' },
  root_markers = { 'pyproject.toml', '.git' },
  filetypes = { 'python' },
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
  },
}
