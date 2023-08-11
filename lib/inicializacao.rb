class Inicializacao
  def self.inicializando
    system('clear')
  
    print "Inicializando."
    3.times do |i|
      print "."
      sleep 1
    end 
    puts "."
  
    system('clear')
  end 
end 