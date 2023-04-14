-- vim.g.mapleader = ","
-- vim.opt.scrolloff = 999

vim.o.clipboard = "unnamedplus"

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)
vim.keymap.set("n", "vv", ":vsp<CR>", opts)
vim.keymap.set("n", "ss", ":sp<CR>", opts)

vim.keymap.set("n", "<CR>", vim.cmd.nohlsearch, opts)
vim.keymap.set("n", "<D-c>", vim.cmd.nohlsearch, opts)

vim.keymap.set("n", "<Leader>co", ":copen 20<CR>", opts)
vim.keymap.set("n", "<Leader>cl", ":cexpr []<CR>", opts)

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- When in Normal mode, paste over the current line...
vim.keymap.set("n", "<C-P>", "0d$\"*p", { noremap = true })

-- When in Visual mode, paste over the selected region...
vim.keymap.set("x", "<C-P>", "\"*pgv", { noremap = true })

-- In Normal mode, yank the entire buffer...
vim.keymap.set("n", "<C-C>", "1G\"*yG``:lua YankedToClipboard()<CR>", { noremap = true })

-- In Visual mode, yank the selection...
vim.keymap.set("x", "<C-C>", "\"*y:lua YankedToClipboard()<CR>", { noremap = true })

function YankedToClipboard()
  local block_of = (vim.fn.visualmode() == "<C-V>") and "block of " or ""
  local N = string.len(vim.fn.substitute(vim.fn.getreg('*'), '[^\n]\\|\\n$', '', 'g')) + 1
  local lines = (N == 1) and "line" or "lines"
  print(block_of .. N .. " " .. lines .. " yanked to clipboard")
end

-- Navigate Buffers
vim.keymap.set("n", "√", ":bnext<CR>", opts)
vim.keymap.set("n", "©", ":bprevious<CR>", opts)
vim.keymap.set("n", "∂", ":BufDel<CR>", opts)
vim.keymap.set("n", "<C-s>", ":bpick<CR>", opts)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("x", "<C-c>", "yg$")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yankies
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


vim.keymap.set("n", "<leader>o", function()
  vim.cmd [[exec ":%bd\|e#\|bd#"]]
end)

-- Bar Bar Mappings

-- Move to previous/next
vim.keymap.set("n", "<leader>z", "<Cmd>BufferPrevious<CR>", opts)
vim.keymap.set("n", "<leader>v", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
vim.keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts)
vim.keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", opts)
vim.keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", opts)
vim.keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>", opts)
vim.keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>", opts)
vim.keymap.set("n", "<leader>l", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
vim.keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.keymap.set("n", "<C-s>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
vim.keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
vim.keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
vim.keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
vim.keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

