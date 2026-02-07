return {
  {
    "folke/snacks.nvim",
    -- configuration to show hidden files as default
    opts = function(_, opts)
      opts.picker = opts.picker or {}
      opts.picker.sources = opts.picker.sources or {}
      opts.picker.sources.explorer = vim.tbl_extend("force", opts.picker.sources.explorer or {}, {
        hidden = true,
        ignored = true,
      })
    end,
  },
}
