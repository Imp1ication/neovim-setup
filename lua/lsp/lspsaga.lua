-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
    return
end

saga.init_lsp_saga({
    -- keybinds for navigation in lspsaga window
    move_in_saga = { prev = "<Tab>", next = "<S-Tab>" },

    -- use enter to open file with finder
    finder_action_keys = { open = "<CR>" },

    -- use enter to open file with definition preview
    definition_action_keys = { edit = "<CR>", },

    -- code action setup
    code_action_icon = "",
    code_action_num_shortcut = true,
})
