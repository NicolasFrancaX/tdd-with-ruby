require File.expand_path('item', File.dirname(__FILE__))

class CarrinhoDeCompras
  attr_reader :itens

  def initialize
    @itens = []
  end

  def <<(item)
    itens << item
  end

  def maior_valor
    itens.map(&:valor_total).max || 0
  end
end
