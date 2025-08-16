class Pessoa{
  public void andar(){

  }

  var teste = andar;
}


int somar(int a, int b){
  return a + b;
}

///essa é a função main
void main(){
  //switch/expression
  final mediaFinal = 10;
  final conceito = switch(mediaFinal){
    10 || 9 => 'A',
    8 => 'B',
    _ => 'R'  
  };

  //expression
  // const a = 2 + 2;
  // const b = a;
  // final c = somar(2, 1);
  // var d = somar;
  // var e = 2 >= 3;
  // var f = if(a > b){
  //   print('oi');
  // }
  //statement
  // const nota = 9.7;
  // switch(nota){
  //   case >= 9 && <= 10:
  //     print("A");
  //   default:
  //     print("outro conceito");
  // }
  //fall-through
  // switch(nota){
  //   case 9 || 10:
  //     print("A");
  //   case 8:
  //     print("B");
  //   default:
  //     print("C");
  // }
  // const idade = 19;
  // if (idade >= 18){
  //   print("Sim");
  // }
  // //dangling else
  // else{
  //   print('Não');
  // }
  // const b = 1;
  // final a = b + 2;
  // var a = 2;
  // var a;
  // a = 2;
  // a = a + 2;
  //operadores de inferência de tipo
  //const, final, var
  // const nome = "abc".toUpperCase();
  // final nome = "João".toUpperCase();
  // nome = "João";
  //nome.falar();
  // nome = 1;
  // nome = "João Silva";
  // var nome = "João";
  // print(nome.runtimeType);
  // // nome.falar();
  // nome = "João Silva";
  // print(nome.runtimeType);

  // int a = 2; // estático
  // dynamic b = 2;
  // b = "abc";
  // print("oi");
  // b.falar();
  // a.falar();

  // int a = 2;
  // a++; // pós incremento
  // print(a); //3
  // ++a; //pré incremento
  // print(a); //4
  // print(a++);//4
  // //5
  // print(++a);//6

  // double real = 2.3;
  // int inteiro = real.floor();

  // double d1 = 2;
  // int i1 = 2;
  // // double d2 = i1;
  // double d2 = i1.toDouble();


  // String idadeTextual = '25';
  // int idade = int.parse(idadeTextual);
  // String pesoTextual = '80.5';
  // double peso = double.parse(pesoTextual);
  // String alturaTextual = '1,80';
  // num altura = num.parse(alturaTextual);
  // print(altura.runtimeType);


  // var letra = 'x';
  // print(letra * 10);

  // String nome = 'João';
  // String sobrenome = 'Silva';
  // String nomeCompleto = '$nome $sobrenome';
  // int idade = 20;
  // print('No ano que vem terei ${idade + 1} anos');
  // print('Minha idade é $idade');
  // // String nomeCompleto = nome + ' ' + sobrenome;
  // print("Minha idade é " + idade.toString());
  // String nome = 'João';
  // bool deMaior = false;
  // int idade = 17;
  // num peso = 80;
  // double altura = 1.82;
  // num a = 2;
  // num b = 3.0;
  //int c = b / a;
  // int k = 2;
  // int l = 3;
  // double d2 = 1;
  // double d = k + l; 

  //print(c.runtimeType);
  // print(nome.runtimeType);
  // print(deMaior.runtimeType);
  // print(idade.runtimeType);
  // print(peso.runtimeType);
  // print(altura.runtimeType);
  //print(c.runtimeType);
  //unica linha
  /*
    multiplas linhas
   */
  // print("Hello, World");  
}