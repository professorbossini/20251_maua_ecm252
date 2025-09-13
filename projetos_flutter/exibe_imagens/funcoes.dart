void main(){
  final f1 = (){
    print('f1');
  };
  f1();
  final f2 = (){
    print('f2');
    return 'f2';
  };
  print(f2());
  final f3 = () => print('f3');
  f3();

  final f4 = () => <String, String> { };
  print(f4());
  print(f4().runtimeType);
  final f5 = () => {"oi", null};
  print(f5());
  print(f5().runtimeType);

  Function f6 = () => {
    f2()
  };
  print(f6());
  print(f6().runtimeType);
}