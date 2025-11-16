-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
--
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.g.lazyvim_php_lsp = "intelephense"
vim.g.lazyvim_blink_main = false

vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_prettier_needs_config = true

vim.filetype.add({
  extension = {
    gotmpl = "gotmpl",
  },
  pattern = {
    [".*/templates/.*%.tpl"] = "helm",
    [".*/templates/.*%.gohtml"] = "helm",
    ["helmfile.*%.ya?ml"] = "helm",
  },
})

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").lsp.on_attach(function(_, buffer)
          -- stylua: ignore
          vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
        end)
      end,
    },
    {
      -- Add a Treesitter parser for Laravel Blade to provide Blade syntax highlighting.
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        vim.list_extend(opts.ensure_installed, {
          "blade",
          "php_only",
        })
      end,
      config = function(_, opts)
        vim.filetype.add({
          pattern = {
            [".*%.blade%.php"] = "blade",
          },
        })

        require("nvim-treesitter.configs").setup(opts)
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        parser_config.blade = {
          install_info = {
            url = "https://github.com/EmranMR/tree-sitter-blade",
            files = { "src/parser.c" },
            branch = "main",
          },
          filetype = "blade",
        }
      end,
    },
  },
  -- use mini.starter instead of alpha
  { import = "lazyvim.plugins.extras.ui.mini-starter" },
  -- cmp tailwind highlighting
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "tailwind-tools",
      "onsails/lspkind-nvim",
      -- ...
    },
    opts = function()
      return {
        -- ...
        formatting = {
          format = require("lspkind").cmp_format({
            before = require("tailwind-tools.cmp").lspkind_format,
          }),
        },
      }
    end,
  },
}
