import 'package:doce_conta/view/concluded.dart';
import 'package:doce_conta/view/main_screen.dart';
import 'package:doce_conta/view/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          // ignore: deprecated_member_use
          color: const Color(0xFFF5A001),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Lista de produtos
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16.0),
              itemCount: 3,
              itemBuilder: (context, index) {
                // Lista de produtos
                final productNames = ['Bolo de Chocolate', 'Bolo de Milho', 'Bolo de Fubá'];
                return _buildProductItem(productNames[index]);
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.amber, // Linha amarela entre os itens
                thickness: 1,
                height: 16, // Ajusta o espaçamento da linha entre os itens
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
              child: const Icon(Icons.add, color: Colors.black),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(String productName) {
    return Container(
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
    );
  }
}
