import 'package:flutter/material.dart';
import 'package:joball/funcionamentos/botao_pesquisar.dart';
import 'package:joball/funcionamentos/cards_maisAcessados.dart';
import 'package:joball/funcionamentos/cards_perfil.dart';
import 'package:joball/funcionamentos/menu_lateral.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Icon icone = Icon(Icons.search);
  Widget titulo = Text('Tela Principal');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MenuLateral(),
      appBar: AppBar(
        title: titulo,
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       setState(() {
        //         // ignore: unrelated_type_equality_checks
        //         if (this.icone == Icons.search) {
        //           this.icone = Icon(Icons.cancel);
        //           this.titulo = TextField(

        //           );
        //         } else {}
        //       });
        //     },
        //     icon: icone,
        //     iconSize: 30,
        //     disabledColor: Colors.white,
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              botao_pesquisar(),
              SizedBox(height: 30),
              Text('Mais Acessados',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    cards_maisAcessados(size: size),
                    cards_maisAcessados(size: size),
                    cards_maisAcessados(size: size),
                  ],
                ),
              ),
              cards_perfil(),
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
