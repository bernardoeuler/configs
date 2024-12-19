-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
    {"dracula/vim"},
}

lvim.colorscheme = "dracula"
lvim.transparent_window = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 10
vim.opt.softtabstop = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.wildmode = "list:longest"
vim.opt.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx"
vim.opt.fileformat = "unix"
vim.opt.smartindent = true
vim.opt.wrap = true

lvim.autocommands = {
  {
    { "ColorScheme" },
    {
      pattern = "*",
      callback = function()
        vim.api.nvim_set_hl(0, "@constructor", { fg = "#ff79c6" })
        vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { fg = "#ffffff" })
        vim.api.nvim_set_hl(0, "@lsp.type.property", { fg = "#ffffff" })
        vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = "#ff79c6" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff" })
        vim.api.nvim_set_hl(0, "@lsp.type.macro", { fg = "#50fa7b" })
      end,
    },
  },
}
