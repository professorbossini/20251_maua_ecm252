import 'dart:io';
import 'dart:math';
//usar enum
enum OPCAO {pedra, papel, tesoura, sair}

void exibir(String texto){
  print(texto);
}

int pegarOpcaoUsuario(){
  return int.parse(stdin.readLineSync()!);  
}

bool opcaoEhValida(int opcao){
  return (opcao >= 1 && opcao <=4);
}

//o values do enum é um vetor que tem todos os valores previstos no enum
//opcao varia de 1 a 4
OPCAO mapearOpcao(int opcao){
  return OPCAO.values[opcao - 1];
}

String decidirResultado(OPCAO opcaoUsuario, OPCAO opcaoComputador){
  if(opcaoUsuario == opcaoComputador) return "Empate";
  const voceVenceu = "Você venceu";
  if(opcaoUsuario == OPCAO.pedra && opcaoComputador == OPCAO.tesoura) return voceVenceu;
  if(opcaoUsuario == OPCAO.papel && opcaoComputador == OPCAO.pedra) return voceVenceu;
  if(opcaoUsuario == OPCAO.tesoura && opcaoComputador == OPCAO.papel) return voceVenceu;
  return "Computador venceu";
}
//gerar a opção do computador aleatoriamente
//usuario pode escolher o que deseja

void jogo(){
  int opUsuarioInt;
  OPCAO opUsuario, opComputador;
  do{
    do{
      exibir('1-Pedra\n2-Papel\n3-Tesoura\n4-Sair');
      opUsuarioInt = pegarOpcaoUsuario();
    }while(!opcaoEhValida(opUsuarioInt));
    opUsuario = mapearOpcao(opUsuarioInt);
    switch(opUsuario){
      case OPCAO.sair:
        exibir("Até!");
      default:
        opComputador = mapearOpcao(Random().nextInt(3) + 1);
        //Você(pedra) VS (tesoura)Computador
        exibir('Você(${opUsuario.name}) VS (${opComputador.name})Computador');
        final resultado = decidirResultado(opUsuario, opComputador);
        exibir(resultado);
        sleep(Duration(seconds: 3));
    }

  }while(opUsuario != OPCAO.sair);
}
