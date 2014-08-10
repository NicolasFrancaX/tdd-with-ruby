dirname = File.dirname(__FILE__)

require File.expand_path('nota_fiscal', dirname)
require File.expand_path('pedido', dirname)
require File.expand_path('nf_dao', dirname)
require File.expand_path('sap', dirname)
require File.expand_path('relogio_do_sistema', dirname)
require File.expand_path('tabela', dirname)

class GeradorDeNotaFiscal
  def initialize(acoes, tabela = Tabela.new, relogio = RelogioDoSistema.new)
    @acoes = acoes
    @tabela = tabela
    @relogio = relogio
  end

  def gera pedido
    nf = NotaFiscal.new(
      pedido.cliente,
      pedido.valor_total * @tabela[pedido.valor_total],
      @relogio.hoje
    )

    @acoes.each { |acao| acao.executa(nf) }

    nf
  end
end
