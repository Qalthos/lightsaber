return {
  cmd = { 'basedpyright-langserver', '--stdio' },
  root_markers = { 'pyproject.toml', '.git' },
  filetypes = { 'python' },
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        diagnosticSeverityOverrides = {
          reportPrivateUsage = false,
          reportUnannotatedClassAttribute = false,
        },
        useLibraryCodeForTypes = true
      },
      disableOrganizeImports = true,
    },
  },
}
