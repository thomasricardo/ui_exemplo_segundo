import 'package:flutter/material.dart';
import 'package:joball/funcionamentos/card_telaInicial.dart';
import 'package:joball/telas/tela_resgistrar.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardsInicial(texto: 'Cliente', icone: Icon(Icons.person)),
            CardsInicial(texto: 'Profissional', icone: Icon(Icons.work)),
            TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaRegistrar())),
                child: Text('Resgistre-se',
                    style: TextStyle(color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
