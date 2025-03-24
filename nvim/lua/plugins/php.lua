return {
  {
    -- Remove phpcs linter.
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        php = {},
      },
    },
  },
  {
    -- Add neotest-pest plugin for running PHP tests.
    -- A package is also available for PHPUnit if needed.
    "nvim-neotest/neotest",
    dependencies = { "V13Axel/neotest-pest" },
    opts = { adapters = { "neotest-pest" } },
  },
}
