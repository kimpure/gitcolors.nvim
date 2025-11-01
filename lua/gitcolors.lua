--- @class GitColors
local M = {}

--- @class GitColors.Groups
--- @field add string[]
--- @field change string[]
--- @field delete string[]
--- @field ignore string[]
M.groups = {
	add = {
        "NvimTreeGitNew",
        "GitSignsAddInline",
    },
	change = {
        "NvimTreeGitDirty",
        "GitSignsChangeInline",
    },
	delete = {
        "NvimTreeGitDeleted",
        "GitSignsDeleteInline",
    },
	ignore = {
        "NvimTreeGitIgnored",
    },
}

--- @class GitColors.Colors
--- @field add string
--- @field change string
--- @field delete string
--- @field ignore string
M.colors = {
	add = "#81b88b",
	change = "#e2c08d",
	delete = "#c74e39",
	ignore = "#9d9d9d",
}

--- @class GitColors.Bold
--- @field add boolean
--- @field change boolean
--- @field delete boolean
--- @field ignore boolean
M.bold = {
	add = false,
	change = false,
	delete = false,
	ignore = false,
}

--- Apply colors
function M.apply_colors()
	local api = vim.api
    local bold = M.bold
	local colors = M.colors
	local groups = M.groups

	for i = 1, #groups.add do
		api.nvim_set_hl(0, groups.add[i], {
			fg = colors.add,
			bold = bold.add,
		})
	end

    for i = 1, #groups.change do
		api.nvim_set_hl(0, groups.change[i], {
			fg = colors.change,
			bold = bold.change,
		})
	end

    for i = 1, #groups.delete do
		api.nvim_set_hl(0, groups.delete[i], {
			fg = colors.delete,
			bold = bold.delete,
		})
	end

    for i = 1, #groups.ignore do
		api.nvim_set_hl(0, groups.ignore[i], {
			fg = colors.ignore,
			bold = bold.ignore,
		})
	end
end

--- @class GitColors.Options
--- @field bold? GitColors.Bold
--- @field colors? GitColors.Colors
--- @field groups? GitColors.Groups

--- @param options? GitColors.Options
function M.setup(options)
    options = options or {}

    vim.tbl_deep_extend("force", M.bold, options.bold)
    vim.tbl_deep_extend("force", M.colors, options.colors)
    vim.tbl_deep_extend("force", M.groups, options.groups)

	M.apply_colors()

	vim.api.nvim_create_autocmd("ColorScheme", {
		pattern = "*",
		callback = M.apply_colors,
	})
end

return M
