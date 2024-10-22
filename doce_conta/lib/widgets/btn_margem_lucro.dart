import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BtnMargemLucro extends StatefulWidget {
  const BtnMargemLucro({super.key, required this.percentage, required this.color});

  final String percentage;
  final Color color;

  @override
  State<BtnMargemLucro> createState() => _BtnMargemLucroState();
}

class _BtnMargemLucroState extends State<BtnMargemLucro> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 70,
        child: TextButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(widget.color),
          ),
          child: Text(
            widget.percentage,
            style: const TextStyle(color: Colors.black),
          ),
        ));
  }
}
