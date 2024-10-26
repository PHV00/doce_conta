import 'package:doce_conta/view/product_page.dart';
import 'package:doce_conta/view/login.dart';
import 'package:doce_conta/view/profit_margin_screen.dart';
import 'package:doce_conta/view/register.dart';
import 'package:doce_conta/widgets/bootom_navigation_bar_default.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Initial_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  // This widget is the root of your application.
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  Widget actualScreen = RegisterScreen();

  List<Widget> listScreens = [
    RegisterScreen(),
    ProductScreen(),
    ProfitMarginScreen()
  ];

  void changeScreen(int position) {
    this.actualScreen = listScreens[position];
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: actualScreen,
        bottomNavigationBar:
            BootomNavigationBarDefault(), //passar função troca tela como parametro
      ),
    );
  }
}
