puts 1500.to_f
# => 1500.0


puts 72.25.to_i
# => 72


puts "21".to_i # => 21
puts "21.75".to_f # => 21.75


puts "101011101".to_i(2)
# => 349


puts "3 kg de croquetas son las que se comió firulais".to_i
# => 3


puts "3ST4 FR453 713N3 NUM3R05 Y L37R45".to_i
# => 3


puts "afThjnwuMeyecQyrpuLwncmzx".to_i
# => o


hash_array = {"telefono"=>"0000000000", "email"=>"fulanito@gmail.com"}.to_a
print hash_array
# => [["telefono", "0000000000"], ["email", "fulanito@gmail.com"]]


array_hash = [["telefono", "0000000000"], ["email", "fulanito@gmail.com"]].to_h
print array_hash
# => {"telefono"=>"0000000000", "email"=>"fulanito@gmail.com"}


print [[1, "uno"]].to_h
# => {1=>"uno"}


print [[1, "uno"], [2, "dos"]].to_h
# => {1=>"uno", 2=>"dos"}


puts 1500.to_s
# => 1500


p 16777215.to_s(16)
# => "ffffff"


p 66.99.to_s
# => "66.99"




system("pause")