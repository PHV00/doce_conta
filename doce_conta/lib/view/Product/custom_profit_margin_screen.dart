import 'package:flutter/material.dart';
class CustomMarginProfit extends StatelessWidget {
  const CustomMarginProfit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00382B),
        elevation: 0,
        title: const Text(
          "Margem de Lucro",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white, // Definindo a cor do texto como branco
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nova margem de lucro:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00382B),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Insira o valor em porcentagem % que gostaria de cadastrar:",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF00382B),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0xFF00382B)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00382B),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                ),
                onPressed: () { Navigator.pop(context);},
                child: const Text("OK", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
