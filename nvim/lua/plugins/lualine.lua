return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- Custom theme matching i3 colors
    local custom_theme = {
      normal = {
        a = { bg = '#00CCFF', fg = '#2f343f', gui = 'bold' },
        b = { bg = '#2f343f', fg = '#EEEEEE' },
        c = { bg = '#222D31', fg = '#EEEEEE' },
      },
      insert = {
        a = { bg = '#00AA88', fg = '#2f343f', gui = 'bold' },
        b = { bg = '#2f343f', fg = '#EEEEEE' },
        c = { bg = '#222D31', fg = '#EEEEEE' },
      },
      visual = {
        a = { bg = '#FF8C00', fg = '#2f343f', gui = 'bold' },
        b = { bg = '#2f343f', fg = '#EEEEEE' },
        c = { bg = '#222D31', fg = '#EEEEEE' },
      },
      replace = {
        a = { bg = '#E53935', fg = '#EEEEEE', gui = 'bold' },
        b = { bg = '#2f343f', fg = '#EEEEEE' },
        c = { bg = '#222D31', fg = '#EEEEEE' },
      },
      command = {
        a = { bg = '#9C27B0', fg = '#EEEEEE', gui = 'bold' },
        b = { bg = '#2f343f', fg = '#EEEEEE' },
        c = { bg = '#222D31', fg = '#EEEEEE' },
      },
      inactive = {
        a = { bg = '#454947', fg = '#676E7D' },
        b = { bg = '#454947', fg = '#676E7D' },
        c = { bg = '#454947', fg = '#676E7D' },
      },
    }

    require('lualine').setup({
      options = {
        theme = custom_theme,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = { 'NvimTree' },
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {
          {
            'filename',
            file_status = true,
            newfile_status = false,
            path = 1,
          }
        },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { 'nvim-tree', 'trouble' }
    })
  end,
}