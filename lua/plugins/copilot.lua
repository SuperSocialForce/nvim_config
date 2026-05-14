return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
    cmd = "Copilot",
    init = function()
      -- Keep Copilot from taking over <Tab>; custom accept keys can be added later.
      vim.g.copilot_no_tab_map = true
    end,
  },
}
