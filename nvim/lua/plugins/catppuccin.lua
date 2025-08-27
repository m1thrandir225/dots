return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      transparent_background = true,
      auto_integrations = true,
      integrations = {
        bufferline = true,
      },
    },
    init = function()
      local ok, mod = pcall(require, "catppuccin.groups.integrations.bufferline")
      if ok and mod and not mod.get and type(mod.get_theme) == "function" then
        mod.get = mod.get_theme
      end
    end,
  },
}
