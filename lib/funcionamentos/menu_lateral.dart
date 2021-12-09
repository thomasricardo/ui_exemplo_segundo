import 'package:flutter/material.dart';
import 'package:joball/telas/tela_inicial.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Fulano da SIlva'),
            accountEmail: Text('email@email.com.br'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favoritos'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Configurações'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Suporte'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TelaInicial())),
          ),
        ],
      ),
    );
  }
}
