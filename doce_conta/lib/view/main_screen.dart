import 'package:doce_conta/view/product_page.dart';
import 'package:doce_conta/view/login.dart';
import 'package:doce_conta/view/profit_margin_screen.dart';
import 'package:doce_conta/view/register.dart';
import 'package:doce_conta/widgets/bootom_navigation_bar_default.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Initial_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  int _selectPosition = 0;

  void changeScreen(int position) {
    this.actualScreen = listScreens[position];
  }

  void _onSelectOption(int position) {
    setState(() {
      _selectPosition = position;
      changeScreen(position);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: actualScreen,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Images/produto.svg',
                // ignore: deprecated_member_use
                color: _selectPosition == 0
                    ? Color(0xFFF5A001)
                    : Color.fromARGB(255, 158, 103, 0),
                height: 75, width: 75,
              ),
              backgroundColor: const Color(0xFF00382B),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Images/loja.svg',
                // ignore: deprecated_member_use
                color: _selectPosition == 1
                    ? Color(0xFFF5A001)
                    : Color.fromARGB(255, 158, 103, 0),
                height: 65, width: 65,
              ),
              backgroundColor: const Color(0xFF00382B),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Images/estoque.svg',
                // ignore: deprecated_member_use
                color: _selectPosition == 2
                    ? Color(0xFFF5A001)
                    : Color.fromARGB(255, 158, 103, 0),
                height: 65, width: 65,
              ),
              backgroundColor: const Color(0xFF00382B),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Images/relatorio.svg',
                // ignore: deprecated_member_use
                color: _selectPosition == 3
                    ? Color(0xFFF5A001)
                    : Color.fromARGB(255, 158, 103, 0),
                height: 65, width: 65,
              ),
              backgroundColor: const Color(0xFF00382B),
              label: '',
            ),
          ],
          currentIndex: _selectPosition,
          onTap: _onSelectOption,
          // selectedItemColor: Colors.green[900],
          // unselectedItemColor: Colors.green[600],
          // iconSize: 5,
        ), //passar função troca tela como parametro
      ),
    );
  }
}
