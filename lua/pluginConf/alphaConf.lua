local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[                 .___              __                       ]],
	[[                __| _/____    _____/  |_  ____              ]],
	[[              / __ |\__  \  /    \   __\/ __ \              ]],
	[[              / /_/ | / __ \|   |  \  | \  ___/             ]],
	[[              \____ |(____  /___|  /__|  \___  >            ]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.vim<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	local messages = {
		"Tip: Protection 4 Is One Of The Strongest Enchantments In Minecraft!",
		"If You Can Make It, Do It. If You Can't Make it, Learn It!",
		"Be The Best Version Of Yourself!",
		"This Has %20 Chance To Pop Up, Ur Lucky :)",
		"Everything Is Important But First, Enjoy Your Life!",
	}

	local randomIndex = math.random(1, #messages)
	return messages[randomIndex]
end
math.randomseed(os.time())


dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
