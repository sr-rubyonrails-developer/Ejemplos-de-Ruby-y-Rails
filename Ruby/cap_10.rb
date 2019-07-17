#CAPÍTULO 10: COLECCIONES DE OBJETOS

[]

Array.new() 


["elemento 1", "elemento 2","elemento 3"]


arreglo_de_booleanos = [true, false, true, true]
arreglo_de_enteros = [0, 1, 2, 3, 4, 5]


arreglo_variado = [nil, true, :simbolo, "Cadena doble", 'Cadena simple', 12, 25.56, [], {}]


nombre = "Francisco"
edad = 25
estatura = 1.70
 
datos_paciente = [nombre, edad, estatura]


animales = ["liebre", "perro", "gato", "ratón", "iguana", "loro", "tortuga"]


print animales.first # => "liebre"
print animales.first(3) # => ["liebre", "perro", "gato"]


print animales.last # => "tortuga"
print animales.last(2) # => ["loro", "tortuga"]


numeros_variados = [-1, 23, -6, 7, 9, 43, -58, 82, -13, 61, 35, 0 ,0]


puts numeros_variados.length # => 13
puts numeros_variados.size # => 13


puts numeros_variados.count # => 13


cantidad_ceros = numeros_variados.count(0)
puts cantidad_ceros # => 2


estaturas = [1.78, 1.70, 1.55, 1.82, 1.67, 1.68, 1.70, 1.85]


print estaturas.sort
# => [1.55, 1.67, 1.68, 1.7, 1.7, 1.78, 1.82, 1.85]


print estaturas.reverse
# => [1.85, 1.7, 1.68, 1.67, 1.82, 1.55, 1.7, 1.78]


print estaturas.sort.reverse
# => [1.85, 1.82, 1.78, 1.7, 1.7, 1.68, 1.67, 1.55]


calificaciones = [74, 76, 75, 81, 100, 70, 87]


puts calificaciones.min # => 70
puts calificaciones.max # => 100


puts calificaciones.sum # => 563


promedio = calificaciones.sum / calificaciones.length
puts promedio # => 80


puts calificaciones.reduce(:+) # => 563


puts ((1..5).to_a).reduce(:*) # =>  120


estilos_musicales = ["Rock", "Pop", "Clásica", "Cumbia", "Baladas", "Jazz", "Electrónica", "Reggaeton", "Rock and Roll", "Country", "Funk", "Metal"]


puts estilos_musicales[2] # => Clásica


print estilos_musicales[3..5]
# => ["Cumbia", "Baladas", "Jazz"]


puts estilos_musicales.slice(2)
# => Clásica
print estilos_musicales.slice(3..5)
# => ["Cumbia", "Baladas", "Jazz"]


print estilos_musicales.take(2) # => ["Rock", "Pop"]


print estilos_musicales.drop(9)
# => ["Country", "Funk", "Metal"]


navegadores = ["Mozilla Firefox", "Internet Explorer"]


navegadores.push("Maxthon", "Netscape Navigator")
print navegadores
# =>  ["Mozilla Firefox", "Internet Explorer", "Maxthon", "Netscape Navigator"]


# navegadores << "Maxthon"
# navegadores << "Netscape Navigator"
# print navegadores
# # =>  ["Mozilla Firefox", "Internet Explorer", "Maxthon", "Netscape Navigator"]


navegadores.unshift("Google Chrome")
print navegadores
# => ["Google Chrome", "Mozilla Firefox", "Internet Explorer", "Maxthon", "Netscape Navigator"]


indice_mozilla_firefox = navegadores.index("Mozilla Firefox")
puts indice_mozilla_firefox # => 1


navegadores.insert(3, "Safari", "Opera")
print navegadores
# => ["Google Chrome", "Mozilla Firefox", "Internet Explorer", "Safari", "Opera", "Maxthon", "Netscape Navigator"]


instrumentos = ["Guitarra acústica", "Batería", "Bajo eléctrico", "Guitarra eléctrica", "Teclado", "Bongos", "Saxofón"]


instrumentos.delete("Batería")
print instrumentos
# => ["Guitarra acústica", "Bajo eléctrico", "Guitarra eléctrica", "Teclado", "Bongos", "Saxofón"]


instrumentos.delete_at(4)
print instrumentos
# => ["Guitarra acústica", "Bajo eléctrico", "Guitarra eléctrica", "Teclado", "Saxofón"]


instrumentos.delete_if{|elemento| elemento.eql?("Guitarra eléctrica")}
print instrumentos # => ["Guitarra acústica", "Bajo eléctrico", "Teclado", "Saxofón"]


instrumentos.shift(2)
print instrumentos # => ["Teclado", "Saxofón"]


instrumentos.pop
print instrumentos # => ["Teclado"]


preferencias_so = ["Windows", "OS X", "Linux", "Linux", "Linux", "OS X", "Windows"]
preferencias_so.uniq!
print preferencias_so
# => ["Windows", "OS X", "Linux"]


[1, 2, 3, 1, 5] 


arreglo_a = [1, 5, 4, 7, 0, 6, 8]
arreglo_b = [3, 2, 9, 1, 5, 8, 10]


resta_a_b = arreglo_a - arreglo_b
print resta_a_b # => [4, 7, 0, 6]


resta_b_a = arreglo_b - arreglo_a
print resta_b_a # => [3, 2, 9, 10]


union_a_b = arreglo_a | arreglo_b
print union_a_b
# => [1, 5, 4, 7, 0, 6, 8, 3, 2, 9, 10]


interseccion_a_b = arreglo_a & arreglo_b
print interseccion_a_b # => [1, 5, 8]


concatenacion = arreglo_a + arreglo_b
print concatenacion
# => [1, 5, 4, 7, 0, 6, 8, 3, 2, 9, 1, 5, 8, 10]


{}


Hash.new


{"clave_1" => "valor_1", "clave_2" => "valor_2", "clave_3" => "valor_3"}


{clave_1: "valor_1", clave_2: "clave_2", clave_3: "clave_3"}


{clave_1: "valor_1", :clave_2 => "valor_2", "clave_3" => "valor_3"}


{color: "rojo", color: "negro", color: "blanco"}


:simbolo
:otro_simbolo


:"simbolo"
:'otro simbolo'


puts "nombre".object_id
puts "nombre".object_id
puts "nombre".object_id


puts :nombre.object_id == :nombre.object_id
# => true
 
puts "nombre".object_id == "nombre".object_id
# => false


p :ciudad.capitalize
# => :Ciudad
 
p :ciudad.upcase
# => :CIUDAD


puts :nacionalidad[0,6]
# => nacion


puts :nacionalidad.length
# => 12


direccion = {calle: "Girasoles", numero_interior: 0, numero_exterior: 208, colonia: "Paraiso", municipio: "Martínez de la Torre", localidad: "Martínez de la Torre", codigo_postal: "93600", estado: "Veracruz", pais: "México"}


puts direccion.empty? # => false


puts direccion.length # => 9


puts direccion.key?(:municipio) # => true
puts direccion.key?(:cp) # => false


puts direccion.value?("Martínez de la Torre") # => true


codigo_monedas_iso_1 = {"USD" => "Dólar americano", "MXN" => "Peso mexicano", "EUR" => "Euro"}
codigo_monedas_iso_2 = {"USD" => "Dólar americano", "MXN" => "Peso mexicano"}
codigo_monedas_iso_3 = {"USD" => "Peso mexicano", "MXN" => "Dólar americano"}
codigo_monedas_iso_4 = {"MXN" => "Peso mexicano", "EUR" => "Euro", "USD" => "Dólar americano"}


puts codigo_monedas_iso_1 == codigo_monedas_iso_2
# => false
puts codigo_monedas_iso_2 == codigo_monedas_iso_3
# => false
puts codigo_monedas_iso_1 == codigo_monedas_iso_4
# => true


datos_contacto = {nombre: "Fulano", telefono: "0000000000", email: "fulanito@gmail.com"}


print datos_contacto[:nombre]
# => "Fulano"


print datos_contacto.key("Fulano")
# => :nombre


print datos_contacto.values
# => ["Fulano", "0000000000", "fulanito@gmail.com"]


print datos_contacto.values_at(:nombre, :email)
# => ["Fulano", "fulanito@gmail.com"]


print datos_contacto.keys
# => [:nombre, :telefono, :email]


capitales_america_norte = {'Canadá' => 'Ottawa'}


capitales_america_norte['México'] = 'Distrito Federal'
puts capitales_america_norte
# => {"Canadá"=>"Ottawa", "México"=>"Distrito Federal"}


capitales_america_norte['México'] = 'Ciudad de México'
puts capitales_america_norte
# => {"Canadá"=>"Ottawa", "México"=>"Ciudad de México"}


capitales_america_norte.store('Estados Unidos', 'Washington D. C.')
puts capitales_america_norte
# => {"Canadá"=>"Ottawa", "México"=>"Ciudad de México", "Estados Unidos"=>"Washington D. C."}


capitales_america_central = {'Honduras' => 'Tegucigalpa', 'El Salvador' => 'San Salvador', 'Guatemala' => 'Ciudad de Guatemala'}
capitales_america_sur = {'Argentina' => 'Buenos Aires', 'Venezuela' => 'Caracas', 'Brasil' => 'Brasilia'}


capitales_america = capitales_america_norte.merge(capitales_america_sur).merge(capitales_america_central)
puts capitales_america
# => {"Canadá"=>"Ottawa", "México"=>"Ciudad de México", "Estados Unidos"=>"Washington D. C.", "Argentina"=>"Buenos Aires", "Venezuela"=>"Caracas", "Brasil"=>"Brasilia", "Honduras"=>"Tegucigalpa", "El Salvador"=>"San Salvador", "Guatemala"=>"Ciudad de Guatemala"}


capitales_america.delete('Canadá')
capitales_america.delete('El Salvador')
capitales_america.delete('Brasil')
 
puts capitales_america
# => {"México"=>"Ciudad de México", "Estados Unidos"=>"Washington D. C.", "Argentina"=>"Buenos Aires", "Venezuela"=>"Caracas", "Honduras"=>"Tegucigalpa", "Guatemala"=>"Ciudad de Guatemala"}


capitales_america.clear
puts capitales_america
# => {}


