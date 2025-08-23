// import 'dart:io';
// import 'dart:math';

// void main(){
//   var gerador = Random();
//   print(gerador.nextInt(3));
//   print(gerador.nextInt(10) + 1);
//   print(gerador.nextInt(101));
//   //[0,1)
//   print(gerador.nextDouble());
//   print(gerador.nextDouble() * 100);
//   //[100, 150)
//   print(100 + gerador.nextDouble() * 50);
//   //[17, 43)
//   // print(17 + gerador.nextDouble() * (43 - 17));
//   // inteiro: [32, 67]
//   var min = 102, max = 167; 
//   print(min + gerador.nextInt(max - min + 1));
//   print(gerador.nextBool());
// }

// // void print(String texto){
// //   stdout.writeln(texto);
// // }

// String? teste(){
//   return "teste";
// }
// void main(){
//   // print("Digite a idade");
//   // String? idadeTextual = stdin.readLineSync();
//   // if(idadeTextual != null){
//   //   int idade = int.parse(idadeTextual);
//   //   print(idade);
//   // }
//   // int idade = int.parse(stdin.readLineSync()!);
//   // print(idade);
//   // String? nome = teste();
//   // print(("Oi, " + nome.toString()).runtimeType); 
//   // print(("Oi, " + nome));
//   // stdout.writeln("Digite seu nome");
//   // String? nome = stdin.readLineSync();
//   // print("Oi, $nome");
//   // print(("Oi " + nome));
//   // print();
//   // print("Digite a sua idade");
//   // int idade = int.parse(stdin.readLineSync());
  
//   // System.out.println("Oi");
//   // // stdout.write("oi");
//   // stdout.writeln("oi");
//   // print("oi");  
// }

// // // 
// // enum DiaSemana{
// //   SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO, DOMINGO
// // }

// // // class Pessoa{
// // //   int idade;
// // // }
// // void main(){
// //   // print(DiaSemana.values);
// //   // DiaSemana dia = DiaSemana.SABADO;
// //   // print(dia.name);
// //   // switch(dia){
// //   //   case DiaSemana.SEGUNDA:
// //   //     print(":(");
// //   //   case DiaSemana.SABADO || DiaSemana.DOMINGO:
// //   //     print(":)");
// //   //   default:
// //   //     print("whatever");
// //   // }
// //   // const SEGUNDA = 1;
// //   // if(dia == SEGUNDA)
// //   // if (dia == segunda){

// //   // }
// //   // int i = 0;
// //   // do{
// //   //   print(i++);
// //   // }while(i < 10);
// //   // while
// //   // ;
// //   // while(){
    
// //   //   ;
// //   // }
// //   // for(int i = 0;i < 10 ;i++){
// //   //   print(i);
// //   // }
// //   //for each enhanced for
// //   // const nomes = ['José', 'Antônio'];
// //   // const a = "abc".toUpperCase();
// //   // // const a = "a";
// //   // //for/in
// //   // for(final nome in nomes){
// //   //   print(nome);
// //   // }
// //   // for(int i = 0; i < 10; i++){
// //   //   print(i);
// //   // }
// // }

// // // class Pessoa{
// // //   public void andar(){

// // //   }

// // //   var teste = andar;
// // // }


// // // int somar(int a, int b){
// // //   return a + b;
// // // }

// // // ///essa é a função main
// // // void main(){
// // //   //switch/expression
// // //   final mediaFinal = 10;
// // //   final conceito = switch(mediaFinal){
// // //     10 || 9 => 'A',
// // //     8 => 'B',
// // //     _ => 'R'  
// // //   };

// // //   //expression
// // //   // const a = 2 + 2;
// // //   // const b = a;
// // //   // final c = somar(2, 1);
// // //   // var d = somar;
// // //   // var e = 2 >= 3;
// // //   // var f = if(a > b){
// // //   //   print('oi');
// // //   // }
// // //   //statement
// // //   // const nota = 9.7;
// // //   // switch(nota){
// // //   //   case >= 9 && <= 10:
// // //   //     print("A");
// // //   //   default:
// // //   //     print("outro conceito");
// // //   // }
// // //   //fall-through
// // //   // switch(nota){
// // //   //   case 9 || 10:
// // //   //     print("A");
// // //   //   case 8:
// // //   //     print("B");
// // //   //   default:
// // //   //     print("C");
// // //   // }
// // //   // const idade = 19;
// // //   // if (idade >= 18){
// // //   //   print("Sim");
// // //   // }
// // //   // //dangling else
// // //   // else{
// // //   //   print('Não');
// // //   // }
// // //   // const b = 1;
// // //   // final a = b + 2;
// // //   // var a = 2;
// // //   // var a;
// // //   // a = 2;
// // //   // a = a + 2;
// // //   //operadores de inferência de tipo
// // //   //const, final, var
// // //   // const nome = "abc".toUpperCase();
// // //   // final nome = "João".toUpperCase();
// // //   // nome = "João";
// // //   //nome.falar();
// // //   // nome = 1;
// // //   // nome = "João Silva";
// // //   // var nome = "João";
// // //   // print(nome.runtimeType);
// // //   // // nome.falar();
// // //   // nome = "João Silva";
// // //   // print(nome.runtimeType);

// // //   // int a = 2; // estático
// // //   // dynamic b = 2;
// // //   // b = "abc";
// // //   // print("oi");
// // //   // b.falar();
// // //   // a.falar();

// // //   // int a = 2;
// // //   // a++; // pós incremento
// // //   // print(a); //3
// // //   // ++a; //pré incremento
// // //   // print(a); //4
// // //   // print(a++);//4
// // //   // //5
// // //   // print(++a);//6

// // //   // double real = 2.3;
// // //   // int inteiro = real.floor();

// // //   // double d1 = 2;
// // //   // int i1 = 2;
// // //   // // double d2 = i1;
// // //   // double d2 = i1.toDouble();


// // //   // String idadeTextual = '25';
// // //   // int idade = int.parse(idadeTextual);
// // //   // String pesoTextual = '80.5';
// // //   // double peso = double.parse(pesoTextual);
// // //   // String alturaTextual = '1,80';
// // //   // num altura = num.parse(alturaTextual);
// // //   // print(altura.runtimeType);


// // //   // var letra = 'x';
// // //   // print(letra * 10);

// // //   // String nome = 'João';
// // //   // String sobrenome = 'Silva';
// // //   // String nomeCompleto = '$nome $sobrenome';
// // //   // int idade = 20;
// // //   // print('No ano que vem terei ${idade + 1} anos');
// // //   // print('Minha idade é $idade');
// // //   // // String nomeCompleto = nome + ' ' + sobrenome;
// // //   // print("Minha idade é " + idade.toString());
// // //   // String nome = 'João';
// // //   // bool deMaior = false;
// // //   // int idade = 17;
// // //   // num peso = 80;
// // //   // double altura = 1.82;
// // //   // num a = 2;
// // //   // num b = 3.0;
// // //   //int c = b / a;
// // //   // int k = 2;
// // //   // int l = 3;
// // //   // double d2 = 1;
// // //   // double d = k + l; 

// // //   //print(c.runtimeType);
// // //   // print(nome.runtimeType);
// // //   // print(deMaior.runtimeType);
// // //   // print(idade.runtimeType);
// // //   // print(peso.runtimeType);
// // //   // print(altura.runtimeType);
// // //   //print(c.runtimeType);
// // //   //unica linha
// // //   /*
// // //     multiplas linhas
// // //    */
// // //   // print("Hello, World");  
// // // }