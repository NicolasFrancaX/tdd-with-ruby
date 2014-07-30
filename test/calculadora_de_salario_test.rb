require 'test/unit'
require 'redgreen'
require File.expand_path('../lib/calculadora_de_salario',
                         File.dirname(__FILE__))
require File.expand_path('../lib/funcionario',
                         File.dirname(__FILE__))

class CalculadoraDeSalarioTest < Test::Unit::TestCase
  def teste_deve_calcular_salario_para_desenvolvedores_com_salario_abaixo_do_limite
    atribuicao 'Mauricio', 1500.0, Cargo::DESENVOLVEDOR, 0.9
  end

  def teste_deve_calcular_salario_para_desenvolvedores_com_salario_acima_do_limite
    atribuicao 'Mauricio', 4000.0, Cargo::DESENVOLVEDOR, 0.8
  end

  def teste_deve_calcular_salario_para_DBAs_com_salario_abaixo_do_limite
    atribuicao 'Mauricio', 500.0, Cargo::DBA, 0.85
  end

  private

  def atribuicao(nome, salario, cargo, reducao)
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new(nome, salario, cargo)

    salario = calculadora.calcula_salario desenvolvedor

    assert_equal desenvolvedor.salario * reducao, salario
  end
end
