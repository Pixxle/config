local harpoon = require("harpoon")
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

vim.keymap.set("n", "ml", function()
	toggle_telescope(harpoon:list())
end, { desc = "Open harpoon window" })

vim.keymap.set("n", "mm", function()
	harpoon:list():append()
end)

vim.keymap.set("n", "<C-e>", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "m1", function()
	harpoon:list():select(1)
end)
vim.keymap.set("n", "m2", function()
	harpoon:list():select(2)
end)
vim.keymap.set("n", "m3", function()
	harpoon:list():select(3)
end)
vim.keymap.set("n", "m4", function()
	harpoon:list():select(4)
end)
vim.keymap.set("n", "m5", function()
	harpoon:list():select(5)
end)
vim.keymap.set("n", "m6", function()
	harpoon:list():select(6)
end)
vim.keymap.set("n", "m7", function()
	harpoon:list():select(7)
end)
vim.keymap.set("n", "m8", function()
	harpoon:list():select(8)
end)
vim.keymap.set("n", "m9", function()
	harpoon:list():select(9)
end)
