import 'package:doce_conta/view/Product/new_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doce_conta/view/Product/individual_product_screen.dart';
import '../../data/date_storage.dart';

class ProductSelectionScreen extends StatefulWidget {
  //colocar const e resolver
  ProductSelectionScreen({super.key});

  final List ids = [0];
  final List names = [0];

  @override
  State<ProductSelectionScreen> createState() => _ProductSelectionScreen();
}

class _ProductSelectionScreen extends State<ProductSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    DataStorage dataStorage = DataStorage();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00382B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: SvgPicture.asset(
          'assets/images/bolo.svg',
          height: 40,
          color: const Color(0xFFF5A001),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<Map<String, List<dynamic>>>(
          future: dataStorage.getListProductsCake(), // O Future sendo observado
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Enquanto carrega
            } else if (snapshot.hasError) {
              return Text('Erro: ${snapshot.error}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ));
            } else if (snapshot.hasData) {
              // final id = data['id'] as List<int>;
              // final name = data['name'] as List<String>;

              print(snapshot.data!['id']);

              print(snapshot.data!['name']);

              return Column(
                children: [
                  // Lista de produtos
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.all(16.0),
                      itemCount: snapshot.data!['id']!.length,
                      itemBuilder: (context, index) {
                        // Lista de produtos
                        final productNames = snapshot.data!['name'];
                        return _buildProductItem(context, productNames![index]);
                      },
                      separatorBuilder: (context, index) => const Divider(
                        color: Colors.amber, // Linha amarela entre os itens
                        thickness: 1,
                        height:
                            16, // Ajusta o espaçamento da linha entre os itens
                      ),
                    ),
                  ),
                  // Botão de adicionar
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: FloatingActionButton(
                      onPressed: () {
                        // Ação para adicionar novo produto
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductScreen()));
                      },
                      backgroundColor: Colors.white,
                      child: const Icon(Icons.add, color: Colors.black),
                    ),
                  ),
                ],
              );
            } else {
              return Text('Nenhum dado disponível',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )); // Estado inesperado
            }
          }),
    );
  }

  Widget _buildProductItem(BuildContext context, String productName) {
    return GestureDetector(
      onTap: () {
        // Ação ao clicar no produto
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const IndividualProduct()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Text(
          productName,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}
