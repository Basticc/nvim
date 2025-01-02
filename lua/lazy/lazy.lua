

-- Bootstrap lazy.nvim
--
--
-- fn.stdpath busca el nombre del path en runtimepath, si no esta
-- lo saca de la repo y si no puede hacerlo retorna error
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none",
  "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- añade lazypath al runtimepath, mas infomracion en nvim_list_rtp
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim

-- Setup lazy.nvim
require("lazy").setup({
  spec = { 
      {import = "plugins"},

  },
  --install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})
--

