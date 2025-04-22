return {
  cmd = { "ansible-language-server", "--stdio" },
  root_markers = { 'ansible.cfg', ".ansible-lint", '.git' },
  filetypes = { "ansible", "yaml.ansible" },
  -- settings = {
  --     ansible = {
  --         executionEnvironment = {
  --             enabled = true,
  --         },
  --     },
  -- },
}
