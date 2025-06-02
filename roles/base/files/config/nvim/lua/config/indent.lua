vim.cmd("set smartindent")
vim.cmd("set textwidth=160")

vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' },
  {
    pattern = { "*.py", "*.rst" },
    command = "set tabstop=4 shiftwidth=4 expandtab",
  }
)

vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' },
  {
    pattern = { "*.css", "*.html", "*.js", "*.lua", "*.yaml", "*.yml" },
    command = "set tabstop=2 shiftwidth=2 expandtab",
  }
)
