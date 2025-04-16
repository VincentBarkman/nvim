require("options")
require("config.lazy")

vim.cmd("colorscheme onedark")

vim.opt.expandtab = true

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.cmd("colorscheme onedark")
