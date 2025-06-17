class Filme
{
  final String nome;
  final DateTime lancamento;
  final String direcao;
  final String empresa;
  final String genero;
  final String elenco;
  final String sinopse;
  final String pathimg;
  final String trailer;

  Filme(this.nome, this.lancamento, this.direcao, this.empresa, this.genero, this.elenco, this.sinopse, this.pathimg, this.trailer);

  String dataLancamento()
  {
    final dt = lancamento.toString().split(' ');
    final d = dt[0].split('-').reversed.join('/');
    return d;
  }
  
}