require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.filetype.add { extension = { templ = "templ" } }
vim.wo.wrap = false

-- bun hot reload fix
vim.o.backupcopy = "yes"

-- avante.nvim - views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3
