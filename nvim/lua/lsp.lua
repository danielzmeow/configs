require('mason-lspconfig').setup({
    ensure_installed = { 'pyright', 'marksman', 'clangd' },
})

require('mason').setup()
local registry = require('mason-registry')
local function ensure_installed(package)
    if not registry.is_installed(package) then
        vim.cmd('MasonInstall ' .. package)
    end
end
ensure_installed('clang-format')

vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities(),
})

vim.lsp.enable({ 'pyright', 'marksman', 'clangd' })
