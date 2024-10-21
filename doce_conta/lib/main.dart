import 'package:doce_conta/view/pagina_produto.dart';
import 'package:doce_conta/view/login.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Initial.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: InitialScreen(),
    );
  }
}