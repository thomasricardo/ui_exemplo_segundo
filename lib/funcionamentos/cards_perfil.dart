import 'package:flutter/material.dart';
import 'package:joball/telas/tela_detalhes.dart';

// ignore: camel_case_types
class cards_perfil extends StatelessWidget {
  const cards_perfil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => TelaDetalhes())),
      child: Card(
        //color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('imagem'),
                  radius: 55,
                ),
                title: Text('Nome Completo'),
                subtitle: Text('Nome da Profissao'),
              ),
              Divider(color: Colors.blue, height: 20),
              Text('Descricao do que a pessoa faz com os detalhes'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: null, icon: Icon(Icons.share)),
                  IconButton(onPressed: null, icon: Icon(Icons.phone)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
