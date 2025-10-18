import 'dart:async';

import 'package:email_validator/email_validator.dart';

mixin Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      //se o e-mail for válido, adicionar ele mesmo ao sink
      //caso contrário, adicionar "E-mail inválido" ao sink (porém, como erro)
      if(EmailValidator.validate(email)){
        sink.add(email);
      }
      else{
        sink.addError('E-mail inválido');
      }

    }
  );

  //escreva um validador de senha (senhas têm que ter, pelo menos, 4 caracteres)
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if (password.length > 3){
        sink.add(password);
      }
      else{
        sink.addError('Senha inválida');
      }
    }
  );
}