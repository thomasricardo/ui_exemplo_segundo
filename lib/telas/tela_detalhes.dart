import 'package:flutter/material.dart';
import 'package:joball/funcionamentos/botao_contato.dart';
import 'package:joball/funcionamentos/card_comentario.dart';
import 'package:joball/funcionamentos/container_imagem_nome.dart';
import 'package:joball/funcionamentos/menu_lateral.dart';

class TelaDetalhes extends StatefulWidget {
  const TelaDetalhes({Key? key}) : super(key: key);

  @override
  _TelaDetalhesState createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuLateral(),
      appBar: AppBar(
        title: Text('Tela Perfil'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            container_imagem_nome(size: size),
            SizedBox(height: 20),
            Card_comentario(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.attach_money, size: 50, color: Colors.blue),
                      Text('25/hora', style: TextStyle(fontSize: 25)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                      'texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto. \n texto texto texto texto texto texto texto texto texto texto textotexto texto texto texto texto texto texto texto texto texto textotexto texto texto texto texto texto texto texto texto texto texto'),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Botao_contato(
                          icone: Icon(Icons.phone, color: Colors.white),
                          texto: Text('Ligar',
                              style: TextStyle(color: Colors.white))),
                      SizedBox(width: 20),
                      Botao_contato(
                          icone: Icon(Icons.mail, color: Colors.white),
                          texto: Text('Email',
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.home, size: 30, color: Colors.blue),
                      SizedBox(width: 20),
                      Text(
                          'Avenida Rosa das Quebrada, N 564,\n Jardim do Fim do Mundo'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.phone, size: 30, color: Colors.blue),
                      SizedBox(width: 20),
                      Text('16 98145-2233'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.calendar_today, size: 30, color: Colors.blue),
                      SizedBox(width: 20),
                      Text(
                          'segunda - 08:00 as 17:00\n terca - 08:00 as 17:00\n quarta - 08:00 as 17:00\n quinta - 08:00 as 17:00\n sexta - 08:00 as 17:00'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
