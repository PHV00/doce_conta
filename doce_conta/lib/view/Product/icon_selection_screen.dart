import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  const IconSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00382B),
        title: const Text(
          'Selecione o ícone que desejar:',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {Navigator.of(context).pop();},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 1,
                ),
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(8),
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
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00382B),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'ok',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
