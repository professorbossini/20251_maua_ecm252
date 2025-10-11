class ImageModel {
  late String url;
  late String alt;

  // ImageModel.fromJSON(Map<String, dynamic> decodedJSON){
  //   url = decodedJSON['photos'][0]['src']['medium'];
  //   alt = decodedJSON['photos'][0]['alt'];   
  // }
  ImageModel.fromJSON(Map <String, dynamic> decodedJSON):
    url = decodedJSON['photos'][0]['src']['medium'],
    alt = decodedJSON['photos'][0]['alt'];

  ImageModel(this.url, this.alt);

  @override
  String toString() {
    return 'alt: $alt, url: $url';
  }
}