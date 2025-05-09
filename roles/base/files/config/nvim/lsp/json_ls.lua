return {
    cmd = { "vscode-json-languageserver", "--stdio" },
    root_markers = {".git" },
    filetypes = { "json", "jsonc" },
    init_options = {
      provideFormatter = true,
    },
}
