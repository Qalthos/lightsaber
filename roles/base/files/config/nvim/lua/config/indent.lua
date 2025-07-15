vim.cmd("set list")
vim.cmd("set listchars=tab:␉·,trail:␠,nbsp:⎵")
vim.cmd("set smartindent")
vim.cmd("set textwidth=160")

local indent_group = vim.api.nvim_create_augroup("indent", { clear = true })
vim.api.nvim_create_autocmd(
  { 'FileType' },
  {
    pattern = { "python", "rst" },
    group = indent_group,
    command = "set tabstop=4 shiftwidth=4 expandtab",
  }
)

vim.api.nvim_create_autocmd(
  { 'FileType' },
  {
    pattern = { "css", "html", "json", "lua", "spajson", "yaml" },
    group = indent_group,
    command = "set tabstop=2 shiftwidth=2 expandtab",
  }
)
