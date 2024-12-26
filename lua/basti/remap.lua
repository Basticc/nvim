-- Tecla lider, para iniciar un comando
vim.g.mapleader = " "

-- leader + pv ejecuta el comando Ex y queda vim en estado "normal"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Para que cada vez que escribamos comillas se cierren
-- y nuestro cursor quede adentro, la logica es la siguiente
-- en modo insert, si apretas " se creara "" y el cursor quedara
-- a la izquierda del ultimo caracter es decir "<cursor>"
-- vim.api.nvim_set_keymap("i",'""','""<left>', {noremap=true})
-- vim.api.nvim_set_keymap("i","''","''<left>", {noremap=true})

-- Poder agarrar lineas en el modmo visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Mantener centrado el cursor

vim.keymap.set("n","J", "mzJ`z")

--
vim.keymap.set("n","<C-d>", "<C-d>zz")
vim.keymap.set("n","<C-u>", "<C-u>zz")

--
vim.keymap.set("n","n", "nzzzv")
vim.keymap.set("n","N", "Nzzzv")

-- Mantener copiado despues de sobreescribir una variable o lo que sea
-- se usa en el modo visual seleccionando la palabra que queremos sobrescribri
vim.keymap.set("x","<leader>p", "\"_dP")

-- 
vim.keymap.set("v", "<leader>y", "\"+y") -- Copiar en modo visual al clipboard
vim.keymap.set("n", "<leader>y", "\"+y") -- Copiar en modo normal al clipboard
vim.keymap.set("n", "<leader>Y", "\"+y") -- Copiar en modo normal al clipboard


--



-- 
-- vim.keymap.set("n","<leader>d", "\"_d")
-- vim.keymap.set("v","<leader>d", "\"_d")

