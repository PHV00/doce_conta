import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonProfitMargin extends StatefulWidget {
  const ButtonProfitMargin({super.key, required this.percentage, required this.color, this.onPressedFunction});

  final String percentage;
  final Color color;
  final VoidCallback? onPressedFunction;

  @override
  State<ButtonProfitMargin> createState() => _ButtonProfitMarginState();
}

class _ButtonProfitMarginState extends State<ButtonProfitMargin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 70,
        child: TextButton(
          onPressed: widget.onPressedFunction,
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
