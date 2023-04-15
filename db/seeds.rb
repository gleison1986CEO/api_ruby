usuario1 = User.create!(email: "gleison@gmail.com", nome: "gleison silveira", password: "0908Gle@", password_confirmation: "0908Gle@")
usuario2 = User.create!(email: "teste@gmail.com", nome: "teste", password: "0908Gle@", password_confirmation: "0908Gle@")

puts "Usuário 1: #{usuario1.email}"
puts "Usuário 2: #{usuario2.email}"
