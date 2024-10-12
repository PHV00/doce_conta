import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key, required this.btnText});

  final String btnText;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: ElevatedButton(
        onPressed: null,
        style: TextButton.styleFrom(backgroundColor: const Color(0xFF00382B)),    
        child: Text(widget.btnText, style: const TextStyle(color: Colors.white),)
      ),
    );
  }
}