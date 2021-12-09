import 'package:flutter/material.dart';

class Card_comentario extends StatelessWidget {
  const Card_comentario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              title: Text('Comentario mais recente'),
              subtitle: Text(
                  'Nome de uma Cliente\ntexto texto texto texto texto texto texto texto texto texto texto'),
            ),
          ],
        ),
      ),
    );
  }
}
