---@brief
---
--- https://github.com/ansible/vscode-ansible
---
--- Language server for the ansible configuration management tool.
---
--- `ansible-language-server` can be installed via `npm`:
---
--- ```sh
--- npm install -g @ansible/ansible-language-server
--- ```

---@type vim.lsp.Config
return {
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "ansible", "yaml.ansible" },
  root_markers = { 'ansible.cfg', ".ansible-lint", '.git' },
  settings = {
    ansible = {
      executionEnvironment = {
        enabled = false,
      },
      validation = {
        enabled = true,
        lint = {
          enabled = true,
          path = 'ansible-lint',
        },
      },
    },
  },
}
