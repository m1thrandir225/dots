return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  opts = {
    servers = {
      templ = {
        filetypes = { "templ" },
        settings = {
          templ = {
            enable_snippets = true,
          },
        },
      },
    },
  },
}
