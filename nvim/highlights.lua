local cmd = vim.cmd
local colors = require("colors").get()
local function bg(group, color)
   cmd("hi " .. group .. " guibg=" .. color)
end

local function fg(group, color)
   cmd("hi " .. group .. " guifg=" .. color)
end

local fg_bg = function(group, fgcol, bgcol)
   cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

bg("PmenuThumb", colors.black)
bg("PmenuSel", colors.red)
bg("PmenuSbar", colors.black)
fg("LineNr", colors.grey)
fg("VertSplit", colors.black)
bg("NvimTreeNormal", colors.black)
bg("NvimTreeNormalNC", colors.black)
fg_bg("NvimTreeStatuslineNc", colors.black, colors.black)
bg("NvimTreeVertSplit", colors.black)
fg("NvimTreeVertSplit", colors.black)
-- Telescope
fg_bg("TelescopePromptTitle", colors.blue, colors.black2)
fg_bg("TelescopeResultsTitle", colors.red, colors.darker_black)
fg_bg("TelescopePreviewTitle", colors.green, colors.darker_black)
