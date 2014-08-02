require File.expand_path('funcionario', File.dirname(__FILE__))

class CalculadoraDeSalario
  def calcula_salario funcionario
    case funcionario.cargo
    when 0
      return funcionario.salario * 0.8 if funcionario.salario > 3000
      funcionario.salario * 0.9
    when 1 || 2
      return funcionario.salario * 0.75 if funcionario.salario > 2500
      funcionario.salario * 0.85
    end
  end
end
