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
    'assets/Images/prato.svg',
    'assets/Images/mel.svg',
    'assets/Images/ovo.svg',
    'assets/Images/bolacha.svg',
    'assets/Images/pote.svg',
    'assets/Images/melancia.svg',
    'assets/Images/burrito.svg',
    'assets/Images/sanduiche.svg',
    'assets/Images/pastel.svg',
    'assets/Images/croissant.svg',
    'assets/Images/pao2.svg',
    'assets/Images/pao3.svg',
    'assets/Images/pao4.svg',
    'assets/Images/pao5.svg',
    'assets/Images/pirulito.svg',
    'assets/Images/cupcake.svg',
    'assets/Images/donuts.svg',
    'assets/Images/bolinhos.svg',
    'assets/Images/sorvete.svg',
    'assets/Images/brigadeiro.svg',
    'assets/Images/bolo.svg',
    'assets/Images/hamburguer.svg',
    'assets/Images/cafe.svg',
    'assets/Images/refrigerante.svg',
    'assets/Images/cerveja.svg',
    'assets/Images/drink.svg',
    'assets/Images/drink2.svg',
    'assets/Images/drink3.svg',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 1,
                ),
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF00382B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        icons[index],
                        color: const Color(0xFFF5A001),
                        width: 30,
                        height: 30,
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
              icon: SvgPicture.asset('assets/Images/produto.svg',
              // ignore: deprecated_member_use
              color: const Color(0xFFF5A001), height: 30,
              ),
              backgroundColor: const Color(0xFF00382B),
            //  icon: Icon(Icons.widgets_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Images/loja.svg',
              // ignore: deprecated_member_use
              color: const Color(0xFFF5A001), height: 30,),
              //icon: Icon(Icons.store),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Images/estoque.svg',
              // ignore: deprecated_member_use
              color: const Color(0xFFF5A001), height: 30),
              //icon: Icon(Icons.calculate_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Images/relatorio.svg',
              // ignore: deprecated_member_use
              color: const Color(0xFFF5A001), height: 30),
              //icon: Icon(Icons.receipt_long_outlined),
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
