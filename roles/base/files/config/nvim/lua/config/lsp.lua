vim.lsp.enable({ "ansible_ls", "bash_ls", "json_ls", "lua_ls", "ruff", "pyrefly", "yaml_ls" })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if (client == nil) then
      return
    end

    -- LSP autocomplete
    -- if client:supports_method('textDocument/completion') then
    --     vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
    -- end

    -- LSP code folding
    if client:supports_method("textDocument/foldingRange") then
      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "v:lua.vim.lsp.foldexpr()"
    else
      vim.o.foldmethod = "expr"
      vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    end

    -- LSP formatting
    if client:supports_method("textDocument/formatting") then
      vim.keymap.set("n", "\\qf", vim.lsp.buf.format)
      vim.keymap.set("v", "\\qf", vim.lsp.buf.format)
    end

    -- LSP hints
    if client:supports_method("textDocument/inlayHint") then
      vim.lsp.inlay_hint.enable(true)
    end

    -- LSP actions
    vim.keymap.set("n", "grn", vim.lsp.buf.rename, { buffer = event.buf })
    vim.keymap.set("n", "gra", vim.lsp.buf.code_action, { buffer = event.buf })
    vim.keymap.set("n", "grr", vim.lsp.buf.references, { buffer = event.buf })
    vim.keymap.set("n", "gri", vim.lsp.buf.implementation, { buffer = event.buf })
    vim.keymap.set("n", "gO", vim.lsp.buf.document_symbol, { buffer = event.buf })
    vim.keymap.set("i", "<c-s>", vim.lsp.buf.signature_help, { buffer = event.buf })
  end,
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(event)
    vim.lsp.buf.format()
  end
})

vim.diagnostic.config({
  virtual_text = true,
  jump = { float = true },
})
vim.o.winborder = 'rounded'

-- Add noselect to completeopt, to avoid autoinsertion
vim.opt.completeopt:append({ "noselect", "fuzzy" })


-- Assorted keybinds
vim.keymap.set("n", "<C-j>", function() vim.diagnostic.jump({ count = 1 }) end)
vim.keymap.set("n", "<C-k>", function() vim.diagnostic.jump({ count = -1 }) end)
