vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "json" },
  callback = function()
    vim.b.autoformat = false
  end,
})
