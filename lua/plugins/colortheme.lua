return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,

  config = function()
    require('kanagawa').setup {
      theme = 'dragon',
      transparent = false,
      dimInactive = false,
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = 'none' },
          FloatBorder = { bg = 'none' },
        }
      end,
    }
    vim.cmd 'colorscheme kanagawa'
  end,
}
