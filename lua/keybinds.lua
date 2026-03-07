local map = vim.keymap.set

-- themery
map("n", "<leader>cc", "<cmd>Themery<cr>", {desc = "open theme selector"})

--copypaste 
vim.opt.clipboard = "unnamedplus"

map("v", "<C-c>", '"+y')        -- Copy
map({"n", "v"}, "<C-v>", '"+p') -- Paste
map("v", "<C-x>", '"+d')        -- Cut
map("i", "<C-v>", '<C-r>+')     -- Paste in Insert

-- movement beteween windwos
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- neo tree
map("n", "<C-f>", "<cmd>Neotree toggle<cr>", { desc = "nvimtree toggle window" })

-- telescope
local builtin = require('telescope.builtin')
map('n', '<leader>tf', 
	function()
		require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h') })
	end, 
	{ desc = 'Telescope find files' })
map('n', '<leader>tg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>tb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>th', builtin.help_tags, { desc = 'Telescope help tags' })

-- termtoggle
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { desc = "Exit terminal mode" })
-- Horizontal Terminal (Bottom)
map('n', '<leader>tth', '<cmd>ToggleTerm direction=horizontal<cr>', { desc = "Terminal Horizontal" })
-- Vertical Terminal (Right side)
map('n', '<leader>ttv', '<cmd>ToggleTerm size=80 direction=vertical<cr>', { desc = "Terminal Vertical" })
-- Floating Terminal (Center)
map('n', '<leader>ttf', '<cmd>ToggleTerm direction=float<cr>', { desc = "Terminal Float" })
-- Tab Terminal (Full screen)
map('n', '<leader>ttt', '<cmd>ToggleTerm direction=tab<cr>', { desc = "Terminal Tab" })
