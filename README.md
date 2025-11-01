# gitcolors.nvim

## preview
<img width="157" height="135" alt="image" src="https://github.com/user-attachments/assets/5cf9279b-b720-4301-b80d-7fbef918a6d3" />
<img width="316" height="60" alt="image" src="https://github.com/user-attachments/assets/a08f4e4b-15c1-44da-8314-8bb2fb1358fa" />


## install
```lua
return {
    "kimpure/gitcolors.nvim",
    opts = {
        colors = {
            add = "#81b88b",
            change = "#e2c08d",
            delete = "#c74e39",
            ignore = "#9d9d9d",
        },
        bold = {
            add = false,
            change = false,
            delete = false,
            ignore = false,
        },
        groups = {
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
        },
    },
}
```

