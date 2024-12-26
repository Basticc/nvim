local user_profile = os.getenv("USERPROFILE")
local config_path  = user_profile .. "\\AppData\\Local\\nvim\\lua\\basti"
---
------------------------------------------------------------------------		
--- Shortcuts
------------------------------------------------------------------------		

-- Leader File Settings par a ir al directorio de las configuraciones
vim.keymap.set('n', '<Leader>fs', ':Ex ' .. config_path .. "<CR>",
                { noremap = true, silent = true })
