class Item {
  String nome;
  int paginas;
  int quant;

  Item(this.nome, this.paginas, this.quant);

  void emprestarL() {
    quant--;
    print ('Livro $nome emprestado!');
  }

  void emprestarR() {
    quant--;
    print ('Revista $nome emprestada!');
  }

  void mostrarQuantL() {
    print ('O livro $nome possui $quant unidades disponíveis!');
  }

  void mostrarQuantR() {
    print ('A revista $nome possui $quant unidades disponíveis!');
  }
}

class Livro extends Item{
  String autor;

  Livro( String nome, int paginas, int quant, this.autor ):super(nome, paginas, quant);
}

class Revista extends Item{
  String editora;

  Revista(String nome, int paginas, int quant, this.editora ):super(nome, paginas, quant);
}

void main() {  
  var reservaL = Livro('Dom Quixote', 232, 10, 'Miguel de Cervantes Saavedra');
  var reservaR = Revista('VEJA 11/03', 50, 10, 'VEJA');

  reservaL.mostrarQuantL();
  reservaR.mostrarQuantR();

  reservaL.emprestarL();
  reservaR.emprestarR();

  reservaL.mostrarQuantL();
  reservaR.mostrarQuantR();
}