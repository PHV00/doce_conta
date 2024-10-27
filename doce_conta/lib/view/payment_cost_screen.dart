import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00382B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: SvgPicture.asset(
          'assets/images/folha_pagamento.svg',
          height: 40,
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
              itemCount: 5,
              itemBuilder: (context, index) {
                // Lista de produtos
                final serviceNames = ['Salários', 'Vale', '13°', 'Férias', 'Transporte'];
                final servicePrice = ['R\$ 3500', 'R\$ 400', 'R\$ 3500', 'R\$ 3500', 'R\$ 200'];
                return _buildServiceItem(serviceNames[index], servicePrice[index]);
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
                // Adicionar novo produto
              },
              child: const Icon(Icons.add, color: Colors.black),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceItem(String serviceName, String servicePrice) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            serviceName,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            servicePrice,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ]
      ),
    );
  }
}
