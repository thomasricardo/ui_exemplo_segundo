import 'package:flutter/material.dart';

class Botao_contato extends StatelessWidget {
  const Botao_contato({
    Key? key, required this.icone, required this.texto
  }) : super(key: key);

  final Widget icone;
  final Widget texto;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: TextButton.icon(
          onPressed: null,
          icon: icone,
          label: texto),
    );
  }
}
