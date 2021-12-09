import 'package:flutter/material.dart';

// ignore: camel_case_types
class cards_maisAcessados extends StatelessWidget {
  const cards_maisAcessados({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
      ),
    );
  }
}