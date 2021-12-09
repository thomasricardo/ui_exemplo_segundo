import 'package:flutter/material.dart';
import 'package:joball/funcionamentos/botao_pesquisar.dart';
import 'package:joball/funcionamentos/cards_perfil.dart';
import 'package:joball/funcionamentos/menu_lateral.dart';

class TelaPesquisa extends StatefulWidget {
  const TelaPesquisa({Key? key}) : super(key: key);

  @override
  _TelaPesquisaState createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuLateral(),
      appBar: AppBar(
        title: Text('Tela Pesquisa'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              botao_pesquisar(),
              SizedBox(height: 20),
              Text('Resultados da Pesquisa:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              cards_perfil(),
              cards_perfil(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text('Clientes'),
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              title: Text('Trabalhos'),
              icon: Icon(Icons.work)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
