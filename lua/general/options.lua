local options = {
    clipboard = unnamedplus,

    nu = true,
    relativenumber = true,
    numberwidth = 4,

    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,

    hlsearch = false,
    incsearch = true,
    smartindent = true,
    smartcase = true,

    wrap = false,
    
    splitbelow = true,
    splitright = true,
    
    scrolloff = 8,
    sidescrolloff =8,
    showtabline = 2,
    
    signcolumn = "yes",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
