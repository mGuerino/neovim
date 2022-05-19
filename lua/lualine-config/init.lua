require('lualine').setup({
  options = {
    theme = 'nord'
  },
 sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {
            { 'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
                }          },
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
})
