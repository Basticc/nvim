local user_profile = os.getenv("USERPROFILE")
local config_path  = user_profile .. "\\AppData\\Local\\nvim\\lua\\basti"
local config_lazy  = user_profile .. "\\AppData\\Local\\nvim\\lua\\lazy"
---
------------------------------------------------------------------------		
--- Shortcuts
------------------------------------------------------------------------		

-- Leader File Settings par a ir al directorio de las configuraciones
vim.keymap.set('n', '<Leader>fs', ':Ex ' .. config_path .. "<CR>",
                { noremap = true, silent = true })

-- Leader lazy para ir al al directorio de las configuraciones de lazy
vim.keymap.set('n', '<Leader>fl', ':Ex ' .. config_lazy .. "<CR>",
                { noremap = true, silent = true })
