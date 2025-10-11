import 'package:exibe_imagens/src/models/image_model.dart';
import 'package:exibe_imagens/src/widgets/image_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class AppState extends State <App> {
  int numeroDeImagens = 0;
  List<ImageModel> imagens = [];
  void obterImagem() async {
    const chaveAPI = 'a91Qyfh2Ud1rdeOGKV8aTR5Aj9UmRvdma6EdyhC9EfKStoAyt7rmDuhV';
    final url = Uri.https(
      'api.pexels.com',
      '/v1/search',
      {'query': 'cats', 'page': '${numeroDeImagens + 1}', 'per_page': '1'}
    );
    final req = http.Request('get', url);
    req.headers.addAll({
      'Authorization': chaveAPI
    });
    final result = await req.send();
    final response = await http.Response.fromStream(result);
    if(response.statusCode == 200){
      final decodedJSON = json.decode(response.body);
      final imagem = ImageModel.fromJSON(decodedJSON);
      setState(() {
        imagens.add(imagem);
        numeroDeImagens++;
      });
    }
    else{
      print(response.statusCode);
    }
    // req.send().then((result){
    //   http.Response.fromStream(result).then((response){
    //     if(response.statusCode == 200){
    //       print(response.body);
    //     }
    //     else{
    //       print(response.statusCode);
    //     }
    //   });
    // });

    // http.get(Uri.parse("https://api.pexels.com/v1/search"));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Minhas Imagens")),
        body: ImageList(imagens),
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
