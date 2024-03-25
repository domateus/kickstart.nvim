return {
  'nvim-lualine/lualine.nvim',
  options = {
    theme = 'everforest',
    sections = {
      lualine_a = {},
      lualine_b = { 'tabs' },
      lualine_c = { { 'filename', path = 2 } },
    },
    inactive_sections = {
      lualine_b = {},
    },
  },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
}
