---------------------
-- themes for nvim --
---------------------
return{
	-- themes
	{"kvrohit/rasmus.nvim"},
	{"kdheepak/monochrome.nvim"},
	{"folke/tokyonight.nvim"},
	{"Enonya/yuyuko.vim"},
	{"Shadorain/shadotheme"},
	{"xiyaowong/transparent.nvim"},

	-- theme picker
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
      require("themery").setup({
			themes = {
				"rasmus",
				"shado",
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
