return {

----------------------- COLORSCHEME CYBERDREAM
    {
    "scottmckendry/cyberdream.nvim",
    config = function() vim.cmd.colorscheme "cyberdream" end,
    lazy = false,
    priority = 1000,
    },


-- vim.fn.stdpath() funcion que retorna la ruta de un directorio estandar
-- ejemplo fn.stdpath('config') retornara en este caso 
-- 'C:\Users\basti\AppData\Local\nvim'
--
-- Observacion: si queremos copiar un output de un echo por ejemplo de un comando
-- podemos hacer :let @+= comando
-- ejemplo en este caso hice :let @+= stdpath('config')



-------------------------------- TELESCOPE
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = 
      { 'nvim-lua/plenary.nvim',
      {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } 

      },

      defaults = {
        file_ignore_patterns = {
    "^%.",   -- Ignorar archivos que comienzan con un punto
      "%.git/", -- Ignorar toda la carpeta .git
      "%.swp",  -- Ignorar archivos swap de vim
      "%.bak",  -- Ignorar archivos de respaldo
      "%.DS_Store", -- Ignorar archivos de sistema en macOS
      ".git/",  -- Ignorar .git y su contenido
  },



  },
    config =function()
        vim.keymap.set("n", "<leader>fd", require('telescope.builtin').find_files) 
        vim.keymap.set("n", "<leader>fs", function()
            require('telescope.builtin').find_files {
            cwd = vim.fn.stdpath('config')}
        end)
    end,
 },
 


 ------------------------------ TREESITTER
    {
        {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
    }



}
