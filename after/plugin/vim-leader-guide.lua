-- -- Define prefix dictionary
-- local lmap = {}
--
-- -- Simple command
-- vim.api.nvim_set_keymap('n', '<leader>s', ':up<CR>', { noremap = true, silent = true })
-- lmap.s = 'save file'
--
-- -- A command with a special (<...>) key
-- vim.api.nvim_set_keymap('n', '<leader><Tab>', ':call feedkeys(":")<CR>', { noremap = true, silent = true })
-- lmap['<Tab>'] = 'cmd'
--
-- -- To define a group create a dictionary with the special 'name' field
-- lmap.b = { name = 'buffers' }
--
-- -- A mapping within a group
-- vim.api.nvim_set_keymap('n', '<leader>bl', ':ls<CR>', { noremap = true, silent = true })
-- lmap.b.l = 'list'
--
-- vim.g.mapleader = ' '
--
-- -- Register the dictionary with leader guide
-- vim.call('leaderGuide#register_prefix_descriptions', '<Space>', 'lmap')
-- vim.api.nvim_set_keymap('n', '<leader>', ':<c-u>LeaderGuide \' \'<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<leader>', ':<c-u>LeaderGuideVisual \' \'<CR>', { noremap = true, silent = true })
--
