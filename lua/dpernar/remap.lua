-- Use `:so` to shout out file

-- set leader key (space bar)
vim.g.mapleader = ' ';


-- Open explore view
vim.keymap.set("n", "<leader>vp", vim.cmd.Ex);


-- Switch tabs easily
vim.keymap.set("n", "L", vim.cmd.tabnext);
vim.keymap.set("n", "H", vim.cmd.tabprev);


-- Move highlighted text easily
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");


-- Rename variable
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- Set script as executable (Linux)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- Set tab to scroll through autocomplete suggestions (not great, gotta rework)
-- vim.keymap.set("i", "<Tab>", "<C-n>");
-- vim.keymap.set("i", "<S-Tab>", "<C-p>");

-- local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
-- vim.keymap.set("i", "<TAB>", 'coc#pum#visible() 
-- ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
-- vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)



-- New tab
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew);
