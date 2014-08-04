# ecoding: utf-8
require File.expand_path('funcionario', File.dirname(__FILE__))

class CalculadoraDeSalario
  def calcula_salario funcionario
    if acima_do_limite? funcionario
      return funcionario.salario * funcionario.cargo[:porcentagem_limite]
    else
      return funcionario.salario * funcionario.cargo[:porcentagem_base]
    end
    raise Exception.new("Funcionário inválido")
  end

  def acima_do_limite?(funcionario)
    funcionario.salario > funcionario.cargo[:limite]
  end
end
