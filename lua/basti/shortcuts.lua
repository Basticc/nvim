local path_config= vim.fn.stdpath('config')
local config_path, config_lazy
if package.config:sub(1,1) == '\\'
    then 
    config_path  = path_config.. "\\lua\\basti"
    config_lazy  = path_config.. "\\lua\\plugins"
else
    config_path = path_config .. "/lua/basti"
    config_lazy  = path_config .. "/lua/plugins"
end


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
