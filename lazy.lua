-- lazy installation path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- clone lazy if is not in the system
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- add lazy to runtime path
vim.opt.rtp:prepend(lazypath)
