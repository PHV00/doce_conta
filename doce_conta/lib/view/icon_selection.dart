import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IconSelectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IconSelectionScreen extends StatelessWidget {
  final List<String> icons = [
    'img/prato.svg',
    'img/mel.svg',
    'img/ovo.svg',
    'img/bolacha.svg',
    'img/pote.svg',
    'img/melancia.svg',
    'img/burrito.svg',
    'img/sanduiche.svg',
    'img/pastel.svg',
    'img/croissant.svg',
    'img/pao2.svg',
    'img/pao3.svg',
    'img/pao4.svg',
    'img/pao5.svg',
    'img/pirulito.svg',
    'img/cupcake.svg',
    'img/donuts.svg',
    'img/bolinhos.svg',
    'img/sorvete.svg',
    'img/brigadeiro.svg',
    'img/bolo.svg',
    'img/hamburguer.svg',
    'img/cafe.svg',
    'img/refrigerante.svg',
    'img/cerveja.svg',
    'img/drink.svg',
    'img/drink2.svg',
    'img/drink3.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00382B),
        title: Text(
          'Selecione o ícone que desejar:',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Ajuste da margem
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.0, // Ajuste do espaçamento horizontal
                  mainAxisSpacing: 16.0,  // Ajuste do espaçamento vertical
                  childAspectRatio: 1, // Mantém as caixas proporcionais
                ),
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(8), // Margem interna ajustada
                    decoration: BoxDecoration(
                      color: const Color(0xFF00382B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        icons[index],
                        color: const Color(0xFFF5A001),
                        width: 30, // Redução do tamanho do ícone
                        height: 30, // Redução do tamanho do ícone
                      ),
                      onPressed: () {},
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00382B),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {},
              child: Text(
                'ok',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Images/produto.svg',
              color: const Color(0xFFF5A001),
            ),
            backgroundColor: const Color(0xFF00382B),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Images/loja.svg',
              color: const Color(0xFFF5A001),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Images/estoque.svg',
              color: const Color(0xFFF5A001),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Images/relatorio.svg',
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
}
