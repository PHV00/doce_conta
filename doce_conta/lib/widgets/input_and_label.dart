import 'package:flutter/material.dart';
import '../widgets/text_field.dart';

class InputAndLabelWidget extends StatelessWidget {
  const InputAndLabelWidget({super.key, required this.labelText});

  final String labelText; 

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        width: 350,
        child: 
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 10),
                child: Text(labelText),
              ),
          const RegisterInput()
        ],
      ),
    );
  }
}