import 'package:flutter/material.dart';
import 'package:joball/telas/tela_pesquisa.dart';

// ignore: camel_case_types
class botao_pesquisar extends StatelessWidget {
  const botao_pesquisar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            labelText: 'Pesquisar',
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
            suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaPesquisa(),
                    )))));
  }
}
