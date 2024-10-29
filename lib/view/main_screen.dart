//https://medium.com/flutter-community/data-binding-in-flutter-or-passing-data-from-a-child-widget-to-a-parent-widget-4b1c5ffe2114

import 'package:doce_conta/view/home_screen.dart';
import 'package:doce_conta/view/hub_products.dart';
import 'package:doce_conta/view/hub_store.dart';
import 'package:doce_conta/view/icon_selection_screen.dart';
import 'package:doce_conta/view/infrastructure_costs_screen.dart';
import 'package:doce_conta/view/monthly_report_screen.dart';
import 'package:doce_conta/view/product_screen.dart';
import 'package:doce_conta/view/product_selection_screen.dart';
import 'package:doce_conta/view/profit_margin_screen.dart';
import 'package:doce_conta/view/register_screen.dart';
import 'package:doce_conta/view/value_control_screen.dart';
import 'package:doce_conta/widgets/bootom_navigation_bar_default.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Initial_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doce_conta/view/hub_costing.dart';

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
    MontlhyReport(),
    //Relatorio
    ValueControlScreen(),
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
