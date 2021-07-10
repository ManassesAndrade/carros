import 'package:flutter/material.dart';

//class Texto extends StatelessWidget {

  String label, hint;
  bool password;
  TextInputType keyType;

  Texto(String label, String hint, {keyType, bool password=false,}){
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
    fontSize: 20,
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
