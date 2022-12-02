local options = {
    clipboard = "unnamedplus",

    nu = true,
    relativenumber = true,
    numberwidth = 4,
    cursorline = true,

    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,

    hlsearch = false,
    incsearch = true,
    smartindent = true,
    smartcase = true,

    wrap = false,
    linebreak = true,
    scrolloff = 8,
    sidescrolloff = 8,
    showtabline = 2,

    splitbelow = true,
    splitright = true,
    
    signcolumn = "yes",

    timeoutlen = 300,
    updatetime = 300,
    completeopt = { "menuone", "noselect" },
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
