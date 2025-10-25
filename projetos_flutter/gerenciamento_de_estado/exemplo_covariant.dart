abstract class Animal{
  final _amigos = [];

  String _nome;

  Animal(this._nome);

  void fazerAmizade(Animal a);

  void adicionar(Animal a){
    _amigos.add(a);
  }

  @override
  String toString() {
    return _nome;
  }

  void exibirAmigos(){
    print(_amigos);
  }
}

class Cachorro extends Animal{
  @override
  void fazerAmizade(Animal a) {
    adicionar(a);
  }
  Cachorro(super._nome);
}

class Papagaio extends Animal{
  @override
  void fazerAmizade(Animal a) {
    adicionar(a);
  }
  Papagaio(super._nome);
}

class Gato extends Animal{
  @override
  void fazerAmizade(covariant Gato a){
    adicionar(a);
  }
  Gato(super._nome);
}

void main(){
  final c1 = Cachorro('Ted');
  final p1 = Papagaio('Loro');
  final g1 = Gato('Preto');
  c1.fazerAmizade(p1);
  p1.fazerAmizade(c1);
  g1.fazerAmizade(c1);
  c1.exibirAmigos();
  p1.exibirAmigos();
  g1.exibirAmigos();
}