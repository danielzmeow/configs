require("monokai-v2").setup({
    transparent_background = true,
    styles = {
        comment = { italic = true },
    },
    filter = "light",
})

local is_ok, _ = pcall(vim.cmd, "colorscheme monokai-v2")
if not is_ok then
    vim.notify('colorscheme monokai-v2 not found!')
end
