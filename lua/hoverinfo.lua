local hover = require'hover'

hover.setup {
    init = function ()
        require('hover.providers.lsp')
    end,
    preview_opts = {
        border = nil
    },
    preview_window = false,
    title = true
}

vim.keymap.set('n', 'K', hover.hover, {})

local set_hl_for_floating_window = function()
    vim.api.nvim_set_hl(0, 'NormalFloat', {
        link = 'Normal',
    })
    vim.api.nvim_set_hl(0, 'FloatBorder', {
        bg = 'none',
    })
end

set_hl_for_floating_window()

vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = '*',
    desc = 'Avoid overwritten by loading color schemes later',
    callback = set_hl_for_floating_window,
})

vim.keymap.set('n', 'M', vim.diagnostic.open_float, {})

