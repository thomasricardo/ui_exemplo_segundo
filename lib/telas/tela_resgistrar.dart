import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:joball/telas/tela_principal.dart';

class TelaRegistrar extends StatefulWidget {
  const TelaRegistrar({Key? key}) : super(key: key);

  @override
  _TelaRegistrarState createState() => _TelaRegistrarState();
}

class _TelaRegistrarState extends State<TelaRegistrar> {
  int _valor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrar-se'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Informe os dados abaixo:'),
              TextFormField(decoration: InputDecoration(labelText: 'Nome')),
              SizedBox(height: 20),
              TextFormField(decoration: InputDecoration(labelText: 'Endereço')),
              SizedBox(height: 20),
              TextFormField(decoration: InputDecoration(labelText: 'Bairro')),
              SizedBox(height: 20),
              TextFormField(decoration: InputDecoration(labelText: 'Email')),
              SizedBox(height: 20),
              TextFormField(
                  decoration: InputDecoration(labelText: 'Telefone'),
                  keyboardType: TextInputType.number),
              SizedBox(height: 20),
              TextFormField(decoration: InputDecoration(labelText: 'Senha'), obscureText: true),
              SizedBox(height: 20),
              Text('Informe o tipo de trabalho a ser oferecido:'),
              ListaDrop(),
              ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaPrincipal())),
                  child: Text('Confirmar'))
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container ListaDrop() {
    return Container(
      padding: EdgeInsets.all(10),
      child: DropdownButton(
        value: _valor,
        items: [
          DropdownMenuItem(
            child: Text('Nenhum'),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text('Servicos'),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text('Produtos'),
            value: 3,
          ),
        ],
        onChanged: (int? value) => setState(() => _valor = value!),
        hint: Text('Selecione'),
      ),
    );
  }
}
