import 'package:flutter/material.dart';
import '../models/image_model.dart';
class ImageList extends StatelessWidget{

  List <ImageModel> imagens;

  ImageList(this.imagens);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imagens.length,
      itemBuilder: (BuildContext context, int index){
        return Image.network(imagens[index].url);
      },
    );
  }
  
  

  // ImageList(List <ImageModel> imagens){
  //   this.imagens = imagens;
  // }
}