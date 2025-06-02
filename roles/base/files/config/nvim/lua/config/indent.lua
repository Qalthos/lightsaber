vim.cmd("set list")
vim.cmd("set listchars=tab:␉·,trail:␠,nbsp:⎵")
vim.cmd("set smartindent")
vim.cmd("set textwidth=160")

local indent_group = vim.api.nvim_create_augroup("indent", { clear = true })
vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' },
  {
    pattern = { "*.py", "*.rst" },
    group = indent_group,
    command = "set tabstop=4 shiftwidth=4 expandtab",
  }
)

vim.api.nvim_create_autocmd(
  { 'BufNewFile', 'BufRead' },
  {
    pattern = { "*.css", "*.html", "*.js", "*.lua", "*.yaml", "*.yml" },
    group = indent_group,
    command = "set tabstop=2 shiftwidth=2 expandtab",
  }
)
