return {
-------------------------------- TELESCOPE
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies =
      { 'nvim-lua/plenary.nvim',
      {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      {'debugloop/telescope-undo.nvim'}
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



      {
      },

  },


  config =function()
      vim.keymap.set("n", "<leader>fd", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<leader>fp", function()
          -- Verificamos el sistema operativo
          if package.config:sub(1, 1) == '\\' then
              PLUGINS = "\\lua\\plugins"
          else
              PLUGINS="/lua/plugins"
          end
          require('telescope.builtin').find_files {
              cwd = vim.fn.stdpath('config') .. PLUGINS}
          end)
          vim.keymap.set("n", "<leader>fs", function()
              require('telescope.builtin').find_files {
                  cwd = vim.fn.stdpath('config')}
              end)
        require('telescope').setup({
            extension = {
                undo = {},
            }

        })
        require("telescope").load_extension("undo")
        vim.keymap.set("n", "<leader>u", ":Telescope undo <CR>")


    end,

}
  }
