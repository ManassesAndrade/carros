import 'package:flutter/material.dart';
import 'package:carros/utils/blue_button.dart';
import 'package:carros/utils/nav.dart';


class BaseConfig extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Config Base"),
      ),
      body: _body(),
    );
  }

  _body() {
  return Container(
  padding: EdgeInsets.all(16),
    child: ListView(
    children: <Widget>[
    _text ("Endereço", "Endereço do Banco."),
    SizedBox(
    height: 5,
    ),
    _text("Porta", "Digite a Porta", keyType:TextInputType.number, password:false),
    SizedBox(
    height: 5
    ),
    _text("Usuário", "Digite o Usuário"),
    SizedBox(
      height: 5,
    ),
    _text("Senha","Digite a Senha", password:true),
      SizedBox(
        height: 5,
      ),
    _text("Nome do Banco", "Digite nome do banco"),
    SizedBox(
      height: 5,
    ),
    _buttons(),
    ],
    ),
    );
  }

  _text(String label, String hint, {keyType, bool password=false,}) {
    return TextFormField(
      keyboardType: keyType,
      obscureText: password,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      decoration:  InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
        hintText: hint,
        hintStyle:TextStyle(
          fontSize: 10,
          color: Colors.grey,
        ),
      ),
    );
  }

  _buttons () {
    return Builder(builder:(context)
    {
      return Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BlueButton("Login",
                  onPressed:()=> _validarCampos(),color: Colors.lightGreen,),
              BlueButton("Limpar",
                  onPressed:()=> _limparCampos(),color: Colors.lightGreen,),
            ],
          ),
        ],
      );
    },
    );
  }

  _limparCampos() {
    print("Limpar Campos");
  }

  _validarCampos() {
    print("Validar Campos");
  }

}