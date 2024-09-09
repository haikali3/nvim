require("config.lazy")
require('vim-options')

-- to copy in neovim
vim.api.nvim_set_keymap('v', '<M-c>', '"+y', { noremap = true, silent = true })
