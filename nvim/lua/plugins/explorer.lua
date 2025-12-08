return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
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
}
