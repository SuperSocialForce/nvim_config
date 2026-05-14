vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "json" },
  callback = function()
    vim.b.autoformat = false
  end,
})

local auto_reload_group = vim.api.nvim_create_augroup("auto_reload_on_external_change", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  group = auto_reload_group,
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})

vim.api.nvim_create_autocmd("FileChangedShellPost", {
  group = auto_reload_group,
  callback = function()
    vim.notify("File reloaded from disk", vim.log.levels.INFO)
  end,
})
