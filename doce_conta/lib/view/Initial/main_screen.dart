//https://medium.com/flutter-community/data-binding-in-flutter-or-passing-data-from-a-child-widget-to-a-parent-widget-4b1c5ffe2114

import 'package:doce_conta/view/initial/home_screen.dart';
import 'package:doce_conta/view/Product/hub_products_screen.dart';
import 'package:doce_conta/view/Reports/hub_report_generation_screen.dart';
import 'package:doce_conta/widgets/bootom_navigation_bar_default.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Store/hub_store_costing_screen.dart';
import 'package:doce_conta/view/Stock/hub_stock_controll_screen.dart';

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
    HubProducts(),
    //Custos
    HubCosting(),
    //Estoque
    HubStockControll(),
    //Relatorio
    ReportGeneration()
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