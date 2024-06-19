-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable autoformat for C# files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "cs", "typescript" },
  callback = function()
    vim.b.autoformat = false
  end,
})
