return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    opts = {
      window = {
        position = "right",
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignore = false,
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = true, replace_netwr = true },
      picker = {
        sources = {
          explorer = {
            layout = {
              auto_hide = { "input" },
              layout = { position = "right" },
            },
          },
        },
      },
    },
  },
}
