//https://medium.com/flutter-community/data-binding-in-flutter-or-passing-data-from-a-child-widget-to-a-parent-widget-4b1c5ffe2114

import 'package:doce_conta/view/home_screen.dart';
import 'package:doce_conta/view/icon_selection.dart';
import 'package:doce_conta/view/product_screen.dart';
import 'package:doce_conta/view/profit_margin_screen.dart';
import 'package:doce_conta/view/register.dart';
import 'package:doce_conta/widgets/bootom_navigation_bar_default.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Initial_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doce_conta/view/login.dart';
import 'package:doce_conta/view/product_selection.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  // This widget is the root of your application.
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {

  List<Widget> listScreens = [
    //Home
    HomeScreen(),
    //Produto
    ProductScreen(),
    //Custos
    IconSelectionScreen(),
    //Estoque
    ProfitMarginScreen(),
    //Relatorio
    RegisterScreen(),
  ];

  Widget actualScreen = HomeScreen();

  int position = 0;

  void changeScreen(int position) {
    setState(() {
      this.actualScreen = listScreens[position];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: actualScreen,
          bottomNavigationBar:
              BootomNavigationBarDefault(changeScreen: (int position) {
              changeScreen(position);
          })),
    );
  }
}
