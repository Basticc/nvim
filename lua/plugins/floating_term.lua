return {}
--
--
--vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
--local state_term ={
--
--    floating = {
--        buf = -1,
--        win = -1
--    }
--}
--
--
---- Función para crear una ventana flotante en el centro
--local function create_floating_window(opts)
--    opts = opts or {}
--
--    local width = opts.width or math.floor(vim.o.columns*0.8)
--    local height = opts.height or  math.floor(vim.o.lines*0.8)
--
--    local buf = nil
--    if vim.api.nvim_buf_is_valid(opts.buf) then
--        buf = opts.buf
--    else
--        buf = vim.api.nvim_create_buf(false, true) -- Crear un buffer vacío
--    end
--    --
--    -- Calcular la posición para centrar la ventana
--    local col = math.floor((vim.o.columns - width) / 2)
--    local row = math.floor((vim.o.lines - height) / 2)
--
--    -- Opciones para la ventana flotante
--    local win_config = {
--      relative = 'editor',
--      width = width,
--      height = height,
--      col = col,
--      row = row,
--      style = 'minimal',  -- Estilo sin bordes predeterminados
--      border = 'rounded', -- Bordes redondeados
--    }
--
--    local win = vim.api.nvim_open_win(buf, true, win_config) -- Crear la ventana flotante
--
--    return {buf = buf, win = win}
--end
--
--local toggle_terminal = function()
--    if not vim.api.nvim_win_is_valid(state_term.floating.win) then
--        state_term.floating = create_floating_window {buf = state_term.floating.buf}
--        if vim.bo[state_term.floating.buf].buftype ~= "terminal" then
--            vim.cmd.term()
--        end
--
--    else
--        vim.api.nvim_win_hide(state_term.floating.win)
--    end
--end
--
--vim.api.nvim_create_user_command("Floaterminal", toggle_terminal,{})
--
--vim.keymap.set({"n","t"}, "<leader>tt", toggle_terminal)
