import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
class LoginTela extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Row(
              children: [
                Expanded(
                  child: submitButton()
                )
              ],
            ),
          ),
          
        ],
      ),
    );
  }

  Widget emailField(){

    return StreamBuilder(
      stream: bloc.email,
      builder: (BuildContext context, AsyncSnapshot <String> snapshot){

        return TextField(
          onChanged: (novoTexto){
            bloc.changeEmail(novoTexto);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'seu@email.com',
            labelText: 'Endereço de e-mail',
            errorText: snapshot.hasError ? snapshot.error.toString() : null        
          ),
        );
      },
    );
    
  }

  Widget passwordField(){
    return StreamBuilder(
      stream: bloc.password,
      builder: (BuildContext context, AsyncSnapshot <String> snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Senha',
            labelText: 'Senha',
            errorText: snapshot.hasError ? snapshot.error.toString() : null
          ),
        );
      }

    );
  }

  Widget submitButton(){
    return ElevatedButton(
      onPressed: (){},
      child: Text('Login'),
    );
  }
}