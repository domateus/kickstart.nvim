vim.api.nvim_create_autocmd('ColorScheme', {
  group = vim.api.nvim_create_augroup('custom_highlights_everforest', {}),
  pattern = 'everforest',
  callback = function()
    local config = vim.fn['everforest#get_configuration']()
    local palette = vim.fn['everforest#get_palette'](config.background, config.colors_override)
    local set_hl = vim.fn['everforest#highlight']

    set_hl('TSFunction', palette.green, palette.none, 'bold')
    set_hl('@function.method.call.python', palette.green, palette.none, 'bold')
    set_hl('@function.call.tsx', palette.green, palette.none, 'bold')
    set_hl('@function.call.lua', palette.green, palette.none, 'bold')
    set_hl('@function.tsx', palette.purple, palette.none, 'bold')
  end,
})

local config = vim.fn['everforest#get_configuration']()
local palette = vim.fn['everforest#get_palette'](config.background, config.colors_override)
local set_hl = vim.fn['everforest#highlight']

set_hl('TSFunction', palette.green, palette.none, 'bold')
set_hl('@function.method.call.python', palette.green, palette.none, 'bold')
set_hl('@function.call.tsx', palette.green, palette.none, 'bold')
set_hl('@function.call.lua', palette.green, palette.none, 'bold')
set_hl('@function.tsx', palette.purple, palette.none, 'bold')
