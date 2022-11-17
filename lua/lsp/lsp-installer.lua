local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require("lsp.handlers").on_attach,
        capabilities = require("lsp.handlers").capabilities,
    }

    if server.name == "jsonls" then
        local jsonls_opts = require("lsp.settings.jsonls")
        opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
    end

    if server.name == "sumneko_lua" then
        local sumneko_opts = require("lsp.settings.sumneko_lua")
        opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    end

    if server.name == "clangd" then
        local clangd_opts = require("lsp.settings.clangd")
        opts = vim.tbl_deep_extend("force", clangd_opts, opts)
    end

--    if server.name == "jdtls" then
--       local jdtls_opts = require("lsp.settings.jdtls")
--      opts = vim.tbl_deep_extend("force", jdtls_opts, opts)
--    end

    if server.name == "gopls" then
        local gopls_opts = require("lsp.settings.gopls")
        opts = vim.tbl_deep_extend("force", gopls_opts, opts)
    end

    if server.name == "graphql" then
        local graphql_opts = require("lsp.settings.graphql")
        opts = vim.tbl_deep_extend("force", graphql_opts, opts)
    end
    server:setup(opts)


end)
