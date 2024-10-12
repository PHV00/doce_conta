import 'package:flutter/material.dart';

class RegisterInput extends StatefulWidget {
  const RegisterInput({super.key});

  @override
  State<RegisterInput> createState() => _RegisterInputState();
}

class _RegisterInputState extends State<RegisterInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
        ),
        style: const TextStyle(fontSize: 12),
        maxLines: 1,
      ),
    );
  }
}