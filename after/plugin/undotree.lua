-- Sets keymap to call undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle);

-- In the case of windows, allows for "diff" to be executed
vim.g.undotree_DiffCommand = "FC"
