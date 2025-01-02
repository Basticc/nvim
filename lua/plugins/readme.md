# Comentarios o observaciones etc...

- vim.fn.stdpath() funcion que retorna la ruta de un directorio estandar
 ejemplo fn.stdpath('config') retornara en este caso 
 'C:\Users\basti\AppData\Local\nvim'

- Observacion: si queremos copiar un output de un echo por ejemplo de un comando
 podemos hacer :let @+= comando
 ejemplo en este caso hice :let @+= stdpath('config')




