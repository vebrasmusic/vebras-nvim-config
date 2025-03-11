-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- O
-- Add any additional keymaps here
-- -- lua/config/keymaps.lua
vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

vim.keymap.set("n", "<leader>inc", function()
  require("dial.map").manipulate("increment", "normal")
end)
vim.keymap.set("n", "<leader>dec", function()
  require("dial.map").manipulate("decrement", "normal")
end)
vim.keymap.set("n", "g<leader>inc", function()
  require("dial.map").manipulate("increment", "gnormal")
end)
vim.keymap.set("n", "g<leader>dec", function()
  require("dial.map").manipulate("decrement", "gnormal")
end)
