-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"

local opt = vim.opt

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`

--------------------------------------------------------------------

-- To modify packaged plugin configs, use the overrides functionality
-- if the override does not exist in the plugin config, make or request a PR,
-- or you can override the whole plugin config with 'chadrc' -> M.plugins.default_plugin_config_replace{}
-- this will run your config instead of the NvChad config for the given plugin

-- To add new mappings, use the "setup_mappings" hook,
-- you can set one or many mappings
-- example below:

hooks.add("setup_mappings", function(map)
    --BUFFER MAPPINGS
    map('n', '<TAB>', ":bnext<CR>", opts)
    map('n', '<S-TAB>', ":bprevious<CR>", opts)
    map('n', '<leader>s', ":Telescope lsp_document_symbols<CR>", opts)
end)

-- To add new plugins, use the "install_plugin" hook,
-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event' field)
-- see: https://github.com/wbthomason/packer.nvim
-- examples below:

hooks.add("install_plugins", function(use)
    --Nvim Lsp Installer
    use "nathom/filetype.nvim"
    use {
        "williamboman/nvim-lsp-installer",
        config = function()
            require("custom.plugins.lspinstaller")
        end,
        after = "nvim-lspconfig",
    }
end)

-- Global settings that are not default in nv chad

opt.pumheight = 10
opt.pumwidth = 7
opt.scrolloff = 8
opt.showmode = false
opt.guifont = "JetBrainsMono NF"

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with
-- require "custom.plugins.mkdir"

require "custom.chadcmd"
