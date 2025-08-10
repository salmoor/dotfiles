-- Move text up and down (account for MacOS Option key)
vim.keymap.set('i', '∆', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '˚', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '∆', ':move .+1<CR>==')
vim.keymap.set('n', '˚', ':move .-2<CR>==')
vim.keymap.set('v', '∆', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '˚', ":move '<-2<CR>gv=gv")

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Reselect visual selection after indenting.
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Maintain the cursor position when yanking a visual selection.
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set('v', 'y', 'myy`y')
vim.keymap.set('v', 'Y', 'myY`y')

-- Easy insertion of a trailing ; or , from insert mode.
vim.keymap.set('i', ';;', '<Esc>A;<Esc>')
vim.keymap.set('i', ',,', '<Esc>A,<Esc>')

-- Clear search highlighting.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>x', ':!open %<CR><CR>')

-- Rename
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
