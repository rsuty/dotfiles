
local M = {}

M.options = {
    number = true,
    shiftwidth = 4,
    tabstop = 4,
    updatetime = 250,
    nvChad = {
        copy_cut = true,
        copy_del = true,
        insert_nav = false,
        window_nav = true,
        theme_toggler = false,
        update_branch = "main",
    }
}

M.ui = {
    transparency = false,
    hl_override = "custom.highlights",
    theme = "nord"
}

M.plugins = {
    status = {
        truezen = false,
        feline = true,
        bufferline = true,
        colorizer = false,
        vim_matchup = false,
        telescope_media = true,
        blankline = false,
        comment = false,
        dashboard = true,
    },
    options = {
        nvimtree = {
            enable_git = 0,
            ui = {
                allow_resize = true,
                side = "right",
                width = 25,
                hide_root_folder = true,
            },
        },
        lspconfig = {
           setup_lspconf = "custom.lsp_stuff.lsp",
        },
        statusline = {
            style = "arrow",
        },
    },
    default_plugin_config_replace = {
        nvim_treesitter = "custom.plugins.treesitter",
        dashboard = "custom.plugins.dashboard",
        bufferline = "custom.plugins.bufferline",
    },
}
M.mappings = {
    custom = {},
}

M.mappings.plugins = {
    nvimtree = {
        toggle = "<leader>e",
        focus = "<C-n>",
    },
    dashboard = {
        session_save = "<leader>sa"
    },
}
return M
