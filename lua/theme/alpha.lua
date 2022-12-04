local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

-- Banner --
local header_small = {

    "",
    "    ___                _ _            __  _            ",
    "   <  /___ ___  ____  / (_)________ _/ /_(_)___  ____  ",
    "   / / __ `__ |/ __ |/ / / ___/ __ `/ __/ / __ |/ __ | ",
    "  / / / / / / / /_/ / / / /__/ /_/ / /_/ / /_/ / / / / ",
    " /_/_/ /_/ /_/ .___/_/_/|___/|__,_/|__/_/|____/_/ /_/  ",
    "            /_/                                        ",
    "",
    "",
    "",
}

local header_mid = {

    "",
    "  ██╗███╗   ███╗██████╗ ██╗     ██╗ ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗ ",
    " ███║████╗ ████║██╔══██╗██║     ██║██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║ ",
    " ╚██║██╔████╔██║██████╔╝██║     ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║ ",
    "  ██║██║╚██╔╝██║██╔═══╝ ██║     ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║ ",
    "  ██║██║ ╚═╝ ██║██║     ███████╗██║╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║ ",
    "  ╚═╝╚═╝     ╚═╝╚═╝     ╚══════╝╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ",
    "",
    "",
    "",
}

local header_alt = {

    "",
    " ██▓ ███▄ ▄███▓ ██▓███   ██▓     ██▓ ▄████▄   ▄▄▄     ▄▄▄█████▓ ██▓ ▒█████   ███▄    █  ",
    "▓██▒▓██▒▀█▀ ██▒▓██░  ██▒▓██▒    ▓██▒▒██▀ ▀█  ▒████▄   ▓  ██▒ ▓▒▓██▒▒██▒  ██▒ ██ ▀█   █  ",
    "▒██▒▓██    ▓██░▓██░ ██▓▒▒██░    ▒██▒▒▓█    ▄ ▒██  ▀█▄ ▒ ▓██░ ▒░▒██▒▒██░  ██▒▓██  ▀█ ██▒ ",
    "░██░▒██    ▒██ ▒██▄█▓▒ ▒▒██░    ░██░▒▓▓▄ ▄██▒░██▄▄▄▄██░ ▓██▓ ░ ░██░▒██   ██░▓██▒  ▐▌██▒ ",
    "░██░▒██▒   ░██▒▒██▒ ░  ░░██████▒░██░▒ ▓███▀ ░ ▓█   ▓██▒ ▒██▒ ░ ░██░░ ████▓▒░▒██░   ▓██░ ",
    "░▓  ░ ▒░   ░  ░▒▓▒░ ░  ░░ ▒░▓  ░░▓  ░ ░▒ ▒  ░ ▒▒   ▓▒█░ ▒ ░░   ░▓  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ",
    " ▒ ░░  ░      ░░▒ ░     ░ ░ ▒  ░ ▒ ░  ░  ▒     ▒   ▒▒ ░   ░     ▒ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░ ",
    " ▒ ░░      ░   ░░         ░ ░    ▒ ░░          ░   ▒    ░       ▒ ░░ ░ ░ ▒     ░   ░ ░  ",
    " ░         ░                ░  ░ ░  ░ ░            ░  ░         ░      ░ ░           ░  ",
    "                                    ░                                                   ",
    "",
    "",
    "",
}

local db = require "alpha.themes.dashboard"

db.section.header.val = function()
    if vim.fn.winwidth(0) > 120 then
        return header_alt
    elseif vim.fn.winwidth(0) > 80 then
        return header_mid
    else
        return header_small
    end
end

db.section.header.opts.hl = "Include"

-- Center --
db.section.buttons.val = {
    db.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    db.button("f", "  Find file", ":Telescope find_files <CR>"),
--    db.button("p", "  Find project", ":Telescope projects <CR>"),
    db.button("t", "  Find text", ":Telescope live_grep <CR>"),
    db.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
    db.button("c", "  Colorscheme", ":Telescope colorscheme <CR>"),
    db.button("q", "  Quit Neovim", ":qa<CR>"),
}

db.section.buttons.opts.hl = "Keyword"

-- Footer --
db.section.footer.val = {
    "",
    "",
    "",
    "",
    "Support you, carry me.",
}

db.section.footer.opts.hl = "Type"
