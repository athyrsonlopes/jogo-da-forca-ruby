require_relative "inicializacao"
require_relative "temas"

class AdivinharPalavra
  include Temas

  def initialize
    Inicializacao.inicializando
  end

  def escolher_palavra(opcao)
    if opcao == 1
      Temas.cores.sample
    elsif opcao == 2
      Temas.objetos.sample
    elsif opcao == 3
      Temas.nomes_proprios.sample
    elsif opcao == 4 
      (Temas.cores + Temas.objetos + Temas.nomes_proprios).sample
    else 
      "Opção inválida"
    end 
  end

  def jogar(opcao)
    palavra = escolher_palavra(opcao)
    letras_corretas = []
    chances_restantes = palavra.length + 1

    while chances_restantes > 0
      puts "Palavra: #{exibir_palavra(palavra, letras_corretas)}"
      puts "Chances restantes: #{chances_restantes}"

      print "Digite uma letra: "
      letra = gets.chomp.downcase

      if palavra.include?(letra) && !letras_corretas.include?(letra)
        letras_corretas << letra
        puts "Letra correta!"
      else
        chances_restantes -= 1
        puts "Letra incorreta. Tente novamente."
      end

      if palavra_completa?(palavra, letras_corretas)
        puts "Parabéns! Você adivinhou a palavra: #{palavra}"
        break
      end
    end

    if chances_restantes.zero?
      puts "Você perdeu! A palavra era: #{palavra}"
    end
  end

  def exibir_palavra(palavra, letras_corretas)
    exibicao = ''
    palavra.each_char do |letra|
      if letras_corretas.include?(letra)
        exibicao += letra + ' '
      else
        exibicao += '_ '
      end
    end
    exibicao.strip
  end

  def palavra_completa?(palavra, letras_corretas)
    palavra.chars.all? { |letra| letras_corretas.include?(letra) }
  end
end



