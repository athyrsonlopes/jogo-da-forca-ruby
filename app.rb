require_relative 'lib/adivinhar_palavra'

puts "Vamos começar o jogo da forca."
puts "Digite o número da opção de tema das palavras da sua escolha:"
puts '1 - cores'
puts '2 - objetos'
puts '3 - nomes_proprios'
puts '4 - geral'

opcao = gets.to_i

jogo = AdivinharPalavra.new
jogo.jogar(opcao)

