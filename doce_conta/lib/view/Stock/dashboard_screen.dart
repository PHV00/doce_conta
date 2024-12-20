import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Graphics extends StatelessWidget {
  const Graphics({super.key});

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
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/Images/LogoColorida.svg",
                    width: 50,
                    height: 50,
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildBigInfoCard('CUSTO', 'R\$ 600,00'),
                    buildInfoCard('LUCRO ESTIMADO', 'R\$ 780,00'),
                    _buildBarChart()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard(String title, String value) {
    final List<String> titleParts =
        title.split(' '); // Divide o título em partes

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

  Widget _buildBarChart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildBar('Bolo', 120),
        _buildBar('Pães', 100),
        _buildBar('Doces', 90),
        _buildBar('Salgados', 90),
        _buildBar('Suco', 70),
        _buildBar('Café', 60),
      ],
    );
  }

  Widget buildBigInfoCard(String title, String value) {
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
                title, // Texto maior
                style: const TextStyle(
                  fontSize: 20, // Tamanho maior
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4), // Espaço entre os textos
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

  Widget _buildBar(String label, double height) {
    return Column(
      children: [
        Container(
          width: 20,
          height: height,
          color: Colors.green[800],
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
