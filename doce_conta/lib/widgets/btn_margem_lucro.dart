import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BtnMargemLucro extends StatefulWidget {
  const BtnMargemLucro({super.key, required this.percentage});

  final String percentage;

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
            backgroundColor: WidgetStateProperty.all<Color>(Color(0xFFC1BFBF)),
          ),
          child: Text(
            widget.percentage,
            style: const TextStyle(color: Colors.black),
          ),
        ));
  }
}
