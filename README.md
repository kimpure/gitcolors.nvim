# gitcolors.nvim

## preview
<img width="157" height="135" alt="image" src="https://github.com/user-attachments/assets/5cf9279b-b720-4301-b80d-7fbef918a6d3" /> <br/>
<img width="129" height="26" alt="image" src="https://github.com/user-attachments/assets/4c251dcb-3a08-43a1-9fba-eeb89873e794" />


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

