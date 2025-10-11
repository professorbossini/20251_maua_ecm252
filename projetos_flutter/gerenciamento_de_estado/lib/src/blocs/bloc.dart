import 'dart:async';

class Bloc{
  final emailController = StreamController <String>();
  final passwordController = StreamController <String> ();
}