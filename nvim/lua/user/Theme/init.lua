
vim.cmd (':colorscheme ayu-dark')
vim.cmd (':hi NonText guifg=bg')

require('ayu').setup({
    mirage = false,
    overrides = {},
})
