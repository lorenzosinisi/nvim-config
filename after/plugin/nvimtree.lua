-- local config = {
--     view = {
--         width = 60,
--         mappings = {
--             custom_only = false,
--             list = {
--                 { key = "l", action = "edit", action_cb = edit_or_open },
--                 { key = "s", action = "vsplit_preview", action_cb = vsplit_preview },
--                 { key = "L", action = "vsplit_preview", action_cb = vsplit_preview },
--                 { key = "h", action = "close_node" },
--                 { key = "H", action = "collapse_all", action_cb = collapse_all }
--             }
--         },
--     },
--     update_focused_file = {
--         enable = false,
--         update_cwd = true
--     },
--     actions = {
--         open_file = {
--             quit_on_open = false
--         }
--     }
-- }
--vim.api.nvim_set_keymap("n", "<space>e", ":NvimTreeToggle<cr>" ,{silent = true, noremap = true})

-- require('nvim-tree').setup(config)

require('nvim-tree').setup({
  hijack_cursor = false,
  on_attach = function(bufnr)
    local bufmap = function(lhs, rhs, desc)
      vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
    end

    -- See :help nvim-tree.api
    local api = require('nvim-tree.api')
    bufmap('L', api.node.open.edit, 'Expand folder or go to file')
    bufmap('s', api.node.open.edit, 'Edit the file')
    bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
    bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
  end
})

vim.api.nvim_set_keymap("n", "<space>e", ":NvimTreeFindFileToggle<cr>" ,{silent = true, noremap = true})
