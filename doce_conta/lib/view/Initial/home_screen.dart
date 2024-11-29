import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/date_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DataStorage dataStorage = DataStorage();
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
                "assets/Images/LogoColorida.svg",
                width: 50,
                height: 50,
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildInfoCard(
                      'MÉDIA MARGEM DE LUCRO TOTAL',
                      FutureBuilder<double>(
                          future: dataStorage
                              .getProfitMargin(), // O Future sendo observado
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return CircularProgressIndicator(); // Enquanto carrega
                            } else if (snapshot.hasError) {
                              return Text(
                                'Erro: ${snapshot.error}',
                                style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,)
                                );
                            } else if (snapshot.hasData) {
                              return Text(
                                '${snapshot.data}',
                                style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,)); // Sucesso
                            } else {
                              return Text(
                                  'Nenhum dado disponível',
                                  style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,)); // Estado inesperado
                            }
                          }),
                    ),
                    buildInfoCard(
                      'MEDIA CUSTO DOS PRODUTOS',
                      FutureBuilder<double>(
                      future: dataStorage
                          .getProductCost(), // O Future sendo observado
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator(); // Enquanto carrega
                        } else if (snapshot.hasError) {
                          return Text(
                            'Erro: ${snapshot.error}',
                            style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,)
                            );
                        } else if (snapshot.hasData) {
                          return Text(
                            '${snapshot.data}',
                            style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,)); // Sucesso
                        } else {
                          return Text(
                              'Nenhum dado disponível',
                              style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,)); // Estado inesperado
                        }
                      })
                    ),
                    buildInfoCard(
                      'LUCRO ULTIMO MÊS',
                      FutureBuilder<double>(
                        future: dataStorage
                            .getProfit(), // O Future sendo observado
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator(); // Enquanto carrega
                          } else if (snapshot.hasError) {
                            return Text(
                              'Erro: ${snapshot.error}',
                              style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,)
                              );
                          } else if (snapshot.hasData) {
                            return Text(
                              '${snapshot.data}',
                              style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,)); // Sucesso
                          } else {
                            return Text(
                                'Nenhum dado disponível',
                                style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,)); // Estado inesperado
                          }
                        })
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard(String title, Widget data) {
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
              child: data),
        ],
      ),
    );
  }

  Widget buildBigInfoCard(String title, Widget data) {
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
            child: data
          ),
        ],
      ),
    );
  }
}
