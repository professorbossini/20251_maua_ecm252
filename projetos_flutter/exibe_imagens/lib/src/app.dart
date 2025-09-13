import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AppState extends State <App> {
  void obterImagem(){
    http.get(Uri.parse("https://api.pexels.com/v1/search"));
  }
  int numeroDeImagens = 0;
  final chaveAPI = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Minhas Imagens")),
        body: Text('Número de imagens: $numeroDeImagens.'),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            obterImagem();

          },
          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
class App extends StatefulWidget{
  State <App> createState(){
    return AppState();
  }
}
