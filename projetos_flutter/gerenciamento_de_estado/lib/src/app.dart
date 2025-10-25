import 'package:flutter/material.dart';
import 'package:gerenciamento_de_estado/src/blocs/provider.dart';
import 'package:gerenciamento_de_estado/src/telas/login_tela.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
          title: 'Login',
          home: Scaffold(
            body: LoginTela(),
          )
        )
    );
  }
}