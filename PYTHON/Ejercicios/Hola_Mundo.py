Python 3.6.1 (v3.6.1:69c0db5, Mar 21 2017, 18:41:36) [MSC v.1900 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> mensaje="""Esto es un msj
... con tres saltos
... de linea"""
>>> print(mensaje)
Esto es un msj
con tres saltos
de linea
>>> H="Hola Mundo"
>>> type(H)
<class 'str'>
>>> print(H)
Hola Mundo
>>> 
>>> numero1=5
>>> numero2=7
>>> if numero1>numero2:
... print("El nUMERO uno es mayor")
  File "<stdin>", line 2
    print("El nUMERO uno es mayor")
        ^
IndentationError: expected an indented block
>>> if numero1>numero2:
... print("El nUMERO uno es mayor")
  File "<stdin>", line 2
    print("El nUMERO uno es mayor")
        ^
IndentationError: expected an indented block
>>> 
>>> numero1=5
>>> numero2=7
>>> if numero1>numero2:
...    print("El numero 1 es mayor")
... else:
...    print("El numero 2 es mayor")
... 
El numero 2 es mayor
>>> 