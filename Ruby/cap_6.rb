# CAPÍTULO 6: LAS VARIABLES


precio = 25.5
cantidad = 35


puts precio # => 25.5


precio * cantidad


total = precio * cantidad
puts total # => 892.5


nombre, apellido_paterno, apellido_materno = "Fulanito", "Zutano", "Perengano"


Integer variable_integer;


Integer variable_integer = 10;


informacion_personal = "Fulanito Zutano Perengano"
puts informacion_personal.class # => String
 
informacion_personal = 23
puts informacion_personal.class # => Integer
 
informacion_personal = 1.72
puts informacion_personal.class # => Float


decremento = 10
decremento -= 1
puts decremento # => 9


decremento = 10
decremento = decremento - 1
puts decremento # => 9


productos_almacen = 80
productos_vendidos = 6
#Si se concreta una venta se haría algo como lo siguiente:
productos_almacen -= productos_vendidos
puts productos_almacen #  => 74


nombre_minuscula = "josé" 
nombre_mayuscula = nombre_minuscula 
nombre_mayuscula.upcase!
 
puts nombre_minuscula # => JOSÉ


original = "Hola"
copia = original.clone


nombre_minuscula = "josé"
nombre_minuscula.freeze

system("pause")