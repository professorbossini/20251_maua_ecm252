import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Minhas Imagens")),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("Estou no arquivo"),
          child: Icon(Icons.camera_alt),
        ),
      ),
    );
  }
}
