local navic = require("nvim-navic")
local gps = require("nvim-gps")

require ('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'x3rvs',
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
    disabled_filetypes = {'minimap', 'NvimTree', 'Dashboard', 'Packer', "Terminal"},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {
      {
        'mode',
        icons_enabled = true,
        padding = 1,
      }
    },
    lualine_b = {
      {
        'diagnostics',
        source = {'nvim_lsp'},
        sections = {'error', 'warn', 'info', 'hint'},
        diagnostics_color = {
          error = 'DiagnosticError',
          warn = 'DiagnosticWarn',
          info = 'DiagnosticInfo',
          hint = 'DiagnosticHint',
        },
        symbols = {error = ' ', warn = ' ', info = 'כֿ ', hint = 'ﯧ '},
        colored = true,
        update_in_insert = true,
        always_visible = false,
      }
    },
    lualine_c = {
      {
        'filetype',
        colored = true,
        icon_only = true,
        icon = {align = 'left'}
      },
      {
        'filename',
        file_status = true,
        path = 0,
        symbols = {
          modified = '',
          readonly = '',
          unnamed = '',
        },
      },
      { navic.get_location, cond = navic.is_available },
    },
    lualine_x = {},
    lualine_y = {'progress', 'location'},
    lualine_z = {
      {
        "os.date('%a %d %b %Y')",
      }
    }
  },
  inactive_sections = {

  },
  tabline = {},
  extensions = {'toggleterm'}
}
