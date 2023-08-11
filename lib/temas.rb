module Temas
  def self.cores
    ["amarelo", "vermelho", "ciano"]
  end

  def self.objetos
    ["liquidificador", "computador", "estilete", "espelho"]
  end

  def self.nomes_proprios
    ["amanda", "guilherme", "constantine"]
  end

  def self.geral
    self.cores + self.objetos + self.nomes_proprios
  end
end


