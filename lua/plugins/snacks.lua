-- Plugin spec for Snacks.nvim: configure explorer to open on the right
return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      explorer = { enabled = true },
      scroll = { enabled = false },
      picker = {
        enabled = true, -- Make sure picker is enabled
        ui_select = true, -- Enable ui_select integration for CopilotChat
        -- configure the explorer source to use the right sidebar layout
        sources = {
          explorer = {
            layout = { layout = { position = "right" } },
          },
        },
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          Snacks.explorer()
        end,
        desc = "File Explorer",
      },
    },
  },
}
