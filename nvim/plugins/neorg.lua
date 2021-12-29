local neorg = require("neorg")
neorg.setup {
    load = {
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp" -- We current support nvim-compe and nvim-cmp only
            }
        },
        ["core.keybinds"] = {
            config = {
                default_keybinds = true,
                neorg_leader = "<leader>m"
            }
        },
        ["core.defaults"] = {}, -- Load all the default modules
        ["core.norg.concealer"] = {}, -- Allows for use of icons
        ["core.norg.dirman"] = { -- Manage your directories with Neorg
            config = {
                workspaces = {
                    my_workspace = "z:/neorg"
                }
            }
        }
    },
}
