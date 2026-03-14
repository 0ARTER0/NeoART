------------------
-- startup nvim --
------------------
return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = function()
		local logo = [[
    _   __            ___    ____  ______
   / | / /__  ____   /   |  / __ \/_  __/
  /  |/ / _ \/ __ \ / /| | / /_/ / / /   
 / /|  /  __/ /_/ // ___ |/ _, _/ / /    
/_/ |_/\___/\____//_/  |_/_/ |_| /_/     
                                           
    ]]

    local opts = {
      theme = "hyper",
      config = {
			header = vim.split(logo, "\n"),
			shortcut = {
				{ icon = "", desc = "which key", group = "", action="show key combinations", key = "space"},
				{ icon = "", desc = "file tree", group = "", action="file tree", key = "ctrl + b"}
			},
			project = { enable = false },
			mru = { enable = false },
			footer = {"Practically all is art even a text editor, meybe :)"},
			},
		}
		return opts
	end,
}
