print('nvim tree')

require'nvim-tree'.setup {
    hijack_cursor = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
  },
}

