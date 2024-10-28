import 'package:flutter/material.dart';

class OtherOptionsWidget extends StatelessWidget {
  const OtherOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1,
          width: 120,
          color: const Color(0xFFC1BFBF),
        ),
        const Text("Outras opções", style: TextStyle(color: Color(0xFFC1BFBF)),),
        Container(
          height: 1,
          width: 120,
          color: const Color(0xFFC1BFBF),
        ),
      ],
    );
  }
}