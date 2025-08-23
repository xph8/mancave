-- alpha, startup screen
return {
  {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require("alpha")

      local startify = require("alpha.themes.startify")
      -- available: devicons, mini, default is mini
      -- if provider not loaded and enabled is true, it will try to use another provider
      startify.file_icons.provider = "devicons"

      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.buttons.val = {
        dashboard.button("b", "λ  > browse", ":Yazi<CR>"),
        dashboard.button("f", "λ  > find", ":Telescope find_files<CR>"),
      }

      alpha.setup(dashboard.opts)
    end,
  },
}
