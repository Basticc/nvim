-- Paths
user_profile = os.getenv("HOMEPATH") 
path_undodir = user_profile .. "\\AppData\\Local\\nvim\\lua\\basti\\undodir"

-- Configuraciones

-- La syntaxis de esto es vim.wo o vim.<esp>  donde la especificacion:
-- esp == o significa que va a ser una configuracion global
-- esp == opt  ? 
-- esp == wo una configuracion local de la ventana!


-------------------------- Aspectos generales --------------------------


---                           Numeracion

------------------------------------------------------------------------		
vim.opt.number = true -- Agregar numeros a la izquierda
vim.opt.relativenumber = true -- Agregar numeros relativos a la posicion 
------------------------------------------------------------------------		

---                      Tabulacion e indentacion

------------------------------------------------------------------------		
-- Cuando tabulamos se generan 4 espacios (por defecto son 8)
-- solo funciona cuando estas en una linea con texto
-- si estas en una linea vacia de todas formas te dara 8 espacios
-- esto ocurre por la identacion automatica y eso se arregla con
-- shiftwidth
vim.opt.tabstop = 4 
        
-- Cambiar la identacion automatica a 4, con esto se soluciona
-- el problema anterior, ahora en una llinea en blanco
-- se insertara 4 espacios al tabyular
vim.opt.shiftwidth = 4

-- Pendiente que significa esto
vim.opt.softtabstop = 4	            	

-- Insertar espacios en lugar de un caracter de tabulacion \t
vim.opt.expandtab = true     

-- smartindent, para informacion mas detallada ver el anexo 1
vim.opt.smartindent = true

-- si wrap esta activado saltara automaticamente la linea
--  si nos salimos del recuadro por muchos caracteres
--  el problema que lleva eso es que quedan lineas
--  con un espaciado extraño y nos obliga a usar g
vim.opt.wrap = false 
------------------------------------------------------------------------		

---                         Historial

------------------------------------------------------------------------		

vim.opt.swapfile = false
vim.opt.backup   = false

-- Directorio donde se guardara los comandos que se han hecho para 
-- deshacer
vim.opt.undodir  = path_undodir

vim.opt.undofile = true

------------------------------------------------------------------------		



--- Smart search
------------------------------------------------------------------------		

-- pendiente comentar
vim.opt.hlsearch = false
vim.opt.incsearch = true

------------------------------------------------------------------------		


--- Scroll

------------------------------------------------------------------------		

vim.opt.scrolloff = 8
-- vim.opt.signcolumn= "yes"
-- vim.opt.isfname:apppend("@-@")


------------------------------------------------------------------------		




--- MISC

------------------------------------------------------------------------		
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Anexo

--[[

1.- EXPLICACION AUTOINDENT
--------------------------------------------------------
Consideremos el sigueinte comando

vim.opt.autoindent = true

Para ver lo que hace consideremos el siguiente codigo:

if (x > 0) {<cursor>

- Ahora presionamos ENTER en donde se encuentra el cursor

SIN AUTOINDENT
if (x > 0) {
<cursor>

CON AUTOINDENT
if (x > 0) {
    <cursor>

Pero usaremos smartautoindent pues se aplica a mas casos
--------------------------------------------------------
--]]



