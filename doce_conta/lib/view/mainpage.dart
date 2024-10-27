import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1FAF4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              SvgPicture.asset(
                "assets/Images/doce_conta_logo.svg",
                width: 50,
                height: 50,
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildInfoCard('MÉDIA DE MARGEM DE LUCRO', '20%'),
                    buildInfoCard('CUSTO', 'R\$ 600,00'),
                    buildInfoCard('LUCRO ESTIMADO', 'R\$ 780,00'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Images/produto.svg',
              color: const Color(0xFFF5A001),
            ),
            backgroundColor: const Color(0xFF00382B),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Images/loja.svg',
              color: const Color(0xFFF5A001),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Images/estoque.svg',
              color: const Color(0xFFF5A001),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Images/relatorio.svg',
              color: const Color(0xFFF5A001),
            ),
            label: '',
          ),
        ],
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.green[600],
        iconSize: 45,
      ),
    );
  }

  Widget buildInfoCard(String title, String value) {
    final List<String> titleParts = title.split(' '); // Divide o título em partes

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF00382B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleParts[0], // Texto menor
                style: const TextStyle(
                  fontSize: 14, // Tamanho menor
                  color: Colors.white70, // Cor clara 
                  fontWeight: FontWeight.w400, 
                ),
              ),
              const SizedBox(height: 4), // Espaço entre os textos
              Text(
                titleParts.sublist(1).join(' '), // Texto maior
                style: const TextStyle(
                  fontSize: 20, // Tamanho maior
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF98CFC2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
