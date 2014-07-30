require 'test/unit'
require 'redgreen'
require File.expand_path('../lib/conversor_de_numero_romano',
                         File.dirname(__FILE__))

class ConversorDeNumeroRomanoTest < Test::Unit::TestCase
  def teste_deve_entender_o_simbolo_I
    atribuicao 'I', 1
  end

  def teste_deve_entender_dois_simbolos_como_II
    atribuicao 'II', 2
  end

  def teste_deve_entender_dois_simbolos_como_XX
    atribuicao 'XX', 20
  end

  def teste_deve_entender_quatro_simbolos_dois_a_dois_como_XXII
    atribuicao 'XXII', 22
  end

  def teste_deve_entender_numeros_como_IX
    atribuicao 'IX', 9
  end

  def teste_deve_entender_numeros_complexos_como_XXIV
    atribuicao 'XXIV', 24
  end

  private

  def atribuicao(numero_romano, numero_arabico)
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte numero_romano
    assert_equal numero_arabico, numero
  end
end
