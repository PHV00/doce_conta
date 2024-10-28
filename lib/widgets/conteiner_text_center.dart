import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';

class Conteinertextcenter extends StatefulWidget {
  const Conteinertextcenter({super.key, required this.btnText, this.onPressedFunction, required this.widhtContainer, required this.heightContainer});

  final String btnText;
  final VoidCallback? onPressedFunction;
  final double widhtContainer;
  final double heightContainer;

  @override
  State<Conteinertextcenter> createState() => _ConteinertextcenterState();
}

class _ConteinertextcenterState extends State<Conteinertextcenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.widhtContainer,
      height: widget.heightContainer,
      margin: const EdgeInsets.only(bottom: 20),
      child: TextButton(
        onPressed: widget.onPressedFunction,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF00382B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(0), // Remova o padding ou ajuste conforme necessário
        ),
        child: Text(
          widget.btnText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
