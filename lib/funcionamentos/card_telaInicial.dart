import 'package:flutter/material.dart';
import 'package:joball/telas/tela_principal.dart';

class CardsInicial extends StatelessWidget {
  const CardsInicial({
    Key? key,
    required  this.texto,
    required this.icone,
  }) : super(key: key);

  final String texto;
  final Icon icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPrincipal())),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: icone,
                title: Text(texto),
              ),
            ],
          ),
        ),
      ),
    );
  }
}