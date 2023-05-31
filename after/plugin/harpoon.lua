require("harpoon").setup({
    menu = {
        width = math.floor(vim.api.nvim_win_get_width(0) - 20),
        height = math.floor(vim.api.nvim_win_get_height(0))
    }
})
