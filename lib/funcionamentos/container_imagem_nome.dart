import 'package:flutter/material.dart';

class container_imagem_nome extends StatelessWidget {
  const container_imagem_nome({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('imagem'),
              radius: 75,
            ),
            SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nome Completo',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text('Profissao',
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
