---------------------
-- themes for nvim --
---------------------
return{
	-- themes
	{"kvrohit/rasmus.nvim"},
	{"kdheepak/monochrome.nvim"},
	{"folke/tokyonight.nvim"},
	{"Enonya/yuyuko.vim"},
	
	-- theme picker
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
      require("themery").setup({
			themes = {
				"rasmus",
				"yuyuko",
				"monochrome", 
				"tokyonight-night", 
				"tokyonight-storm", 
				"tokyonight-day", 
				"tokyonight-moon"},
		})
		end
  }
}
