import 'package:flutter/material.dart';

class ReportDescriptions extends StatelessWidget {
  const ReportDescriptions({super.key});

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
        title: const Text(
          "Descrições",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          children: [
            _buildDescriptionItem(
              "Quantidades de itens vendidos:",
              "Contabilização de todas mercadorias vendidas no dia.",
            ),
            const SizedBox(height: 20),
            _buildDescriptionItem(
              "Valor bruto - caixa:",
              "Ao final do dia o valor recebido durante será contabilizado.\n"
              "Atente-se se o valor apresentado no sistema não for o mesmo presente em seu caixa!",
            ),
            const SizedBox(height: 20),
            _buildDescriptionItem(
              "Valor Lucro - Caixa dia:",
              "Contabilizado de acordo com a margem de lucro registrado de seus produtos.",
            ),
            const SizedBox(height: 20),
            _buildDescriptionItem(
              "Valor Contas:",
              "De acordo com os custos cadastrados determinada porcentagem deve ser reservada para o pagamento das contas ao final do mês.",
            ),
            const SizedBox(height: 20),
            _buildDescriptionItem(
              "Valor Reserva:",
              "Valor recomendado para a reserva de investimento diário.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionItem(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00382B),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF00382B),
          ),
        ),
      ],
    );
  }
}
