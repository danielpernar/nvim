vim.opt.number = true;
vim.opt.relativenumber = true;
vim.opt.shiftwidth = 8;
vim.opt.tabstop = 8;
vim.opt.scrolloff = 8;
vim.opt.incsearch = true;
vim.opt.termguicolors = true;
vim.opt.hlsearch = true;

-- Set powershell as default shell
local powershell_options = {
	shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
	shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
	shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
	shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
	shellquote = "",
	shellxquote = "",
}
for option, value in pairs(powershell_options) do
	vim.opt[option] = value
end
