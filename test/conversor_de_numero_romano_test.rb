require 'test/unit'
require File.expand_path('../lib/conversor_de_numero_romano',
                         File.dirname(__FILE__))

class ConversorDeNumeroRomanoTest < Test::Unit::TestCase
  def teste_deve_entender_o_simbolo_I
    atribuicao 'I', 1
  end

  def teste_deve_entender_o_simbolo_V
    atribuicao 'V', 5
  end

  def teste_deve_entender_o_simbolo_X
    atribuicao 'X', 10
  end

  def teste_deve_entender_o_simbolo_L
    atribuicao 'L', 50
  end

  private

  def atribuicao numero_romano, numero_arabico
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte numero_romano
    assert_equal numero_arabico, numero
  end
end
