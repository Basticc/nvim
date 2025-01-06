# Cosas que son utiles en neovim

# d$, d%
Supongamos que <cursor> indicara donde esta el cursor, | indica donde debes colocar
tu cursor

- Eliminar el final de una linea: Consideremos la siguiente oración

Somebody type the end of this line twice.`<cursor>` somebodry write

Si queremos elimnar desde donde esta el cursor podemos presionar `d$`

Somebody type the end of this line twice.| somebodry write


- Supongamos que estamos en la siguiente linea de codigo: 

function(env,true,set,`<cursor>` namerg)

Si queremos eliminar de donde esta el cursor sin eliminar el cierre de la funcion
es decir el parentesis final, podemos presionar simplemente `d%`

# buscar eliminar y cambiar

Consideremos el siguiente codigo:


```python
import from bookscraping BookEnv

class BookScrap:
    def __init__(self,env,book):
        self.env = env
        self.book = book

env = BookEnv
book_1 = BookScrap(env,"book_1")
book_2 = BookScrap(env,"book_2")
book_3 = BookScrap(env,"book_3")
book_4 = BookScrap(env,"book_4")
book_5 = BookScrap(env,"book_5")
book_6 = BookScrap(env,"book_6")
book_7 = BookScrap(env,"book_7")
```

Queremos cambiar el nombre de la clase BookScrap a Book para esto simplemente
podemos hacer el siguiente comando 


`:,$s/<busca>/<remplaza>/g`

Explicación:
    - `:`: Ingerarlo como comando en nvim
    - `,`: Desde la linea actual del cursor
    - `$s`: Busca todas las coincidencias en este archivo dado un rango
    - `g`: Todas las coincidencias dentro de esta linea

Intentalo aquí:



```python
import from bookscraping BookEnv

class BookScrap:
    def __init__(self,env,book):
        self.env = env
        self.book = book

env = BookEnv
book_1 = BookScrap(env,"book_1") BookScrap BookScrap
book_2 = BookScrap(env,"book_2") BookScrap
book_3 = BookScrap(env,"book_3") BookScrap
book_4 = BookScrap(env,"book_4")
book_5 = BookScrap(env,"book_5")
book_6 = BookScrap(env,"book_6")
book_7 = BookScrap(env,"book_7")
```

| Comando   | Alcance                                |
|-----------|----------------------------------------|
| `:s`      | Solo la línea actual.                 |
| `:%s`     | Todas las líneas del archivo (global). |
| `:.,$s`   | Desde la línea actual hasta el final.  |
| `:10,20s` | Entre las líneas 10 y 20.             |


# Comando r

Con el comando `r` podemos remplazar un
caracter en particular, por ejemplo

`|somebody`
`|somepory`


Intenta cambiar los argumentos, es `r<letra_correcta>`


# cw, c$, etc... c + 

Cambiar la palabra en la cual esta el cursor actualmente
y quedar en modo insert


