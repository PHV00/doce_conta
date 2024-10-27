//EXEMPLO DOCUMENTAÇÂO FLUTTER
//https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html?source=post_page---------------------------
//FEITO COM BASE NA DOCUMENTAÇÂO DO FLUTTER

//transição de tela
//https://www.youtube.com/watch?v=yzgLjuju7ME
//https://www.youtube.com/watch?v=GyTHcUZFNLU

//Ideia Futura fazer um unico BootomNavigationBar e trocar apenas
//o conteudo acima dele

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

typedef ChangeScreen(int index);

class BootomNavigationBarDefault extends StatefulWidget {
  const BootomNavigationBarDefault({super.key, required this.changeScreen});

  final ChangeScreen changeScreen;

  @override
  State<BootomNavigationBarDefault> createState() =>
      _BootomNavigationBarDefaultState();
}

class _BootomNavigationBarDefaultState
    extends State<BootomNavigationBarDefault> {
  int _selectPosition = 0;

  void _onSelectOption(int position) {
    setState(() {
      _selectPosition = position;
      widget.changeScreen(position);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Images/doce_conta_logo.svg',
            // ignore: deprecated_member_use
            color: _selectPosition == 0
                ? Color(0xFFF5A001)
                : Color.fromARGB(255, 158, 103, 0),
            height: 45, width: 45,
          ),
          backgroundColor: const Color(0xFF00382B),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Images/produto.svg',
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
            'assets/Images/loja.svg',
            // ignore: deprecated_member_use
            color: _selectPosition == 2
                ? Color(0xFFF5A001)
                : Color.fromARGB(255, 158, 103, 0),
            height: 55, width: 55,
          ),
          backgroundColor: const Color(0xFF00382B),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Images/estoque.svg',
            // ignore: deprecated_member_use
            color: _selectPosition == 3
                ? Color(0xFFF5A001)
                : Color.fromARGB(255, 158, 103, 0),
            height: 55, width: 55,
          ),
          backgroundColor: const Color(0xFF00382B),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Images/relatorio.svg',
            // ignore: deprecated_member_use
            color: _selectPosition == 4
                ? Color(0xFFF5A001)
                : Color.fromARGB(255, 158, 103, 0),
            height: 55, width: 55,
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
    );
  }
}
