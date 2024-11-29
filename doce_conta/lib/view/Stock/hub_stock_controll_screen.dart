import 'package:doce_conta/view/Stock/stok_management_screen.dart';
import 'package:doce_conta/widgets/container_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Stock/stock_values_screen.dart';

class HubStockControll extends StatefulWidget {
  const HubStockControll({super.key});

  final double _widhtContainer = 140;
  final double _heightCOntainer = 140;
  final double _widhtSvg = 55;
  final double _heightSvg = 55;

  @override
  State<HubStockControll> createState() => _HubStockControll();
}

class _HubStockControll extends State<HubStockControll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Cabeçalho
      appBar: AppBar(
        backgroundColor: const Color(0xff003326),
        title: const Text(
          "Produtos em Estoque",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: ContainerCustomButton(
                            btnText: "Bolos",
                            widhtContainer: widget._widhtContainer,
                            heightContainer: widget._heightCOntainer,
                            svgPath: "assets/Images/bolo.svg",
                            widhtSvg: widget._widhtSvg,
                            heightSvg: widget._heightSvg,
                            onPressedFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const StockManagementScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Flexible(
                          child: ContainerCustomButton(
                            btnText: "Doces",
                            widhtContainer: widget._widhtContainer,
                            heightContainer: widget._heightCOntainer,
                            svgPath: "assets/Images/brigadeiro.svg",
                            widhtSvg: widget._widhtSvg,
                            heightSvg: widget._heightSvg,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Flexible(
                          child: ContainerCustomButton(
                            btnText: "Sucos",
                            widhtContainer: widget._widhtContainer,
                            heightContainer: widget._heightCOntainer,
                            svgPath: "assets/Images/drink.svg",
                            widhtSvg: widget._widhtSvg,
                            heightSvg: widget._heightSvg,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: ContainerCustomButton(
                            btnText: "Pães",
                            widhtContainer: widget._widhtContainer,
                            heightContainer: widget._heightCOntainer,
                            svgPath: "assets/Images/pao.svg",
                            widhtSvg: widget._widhtSvg,
                            heightSvg: widget._heightSvg,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Flexible(
                          child: ContainerCustomButton(
                            btnText: "Salgados",
                            widhtContainer: widget._widhtContainer,
                            heightContainer: widget._heightCOntainer,
                            svgPath: "assets/Images/croissant.svg",
                            widhtSvg: widget._widhtSvg,
                            heightSvg: widget._heightSvg,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Flexible(
                          child: ContainerCustomButton(
                            btnText: "Cafés",
                            widhtContainer: widget._widhtContainer,
                            heightContainer: widget._heightCOntainer,
                            svgPath: "assets/Images/cafe.svg",
                            widhtSvg: widget._widhtSvg,
                            heightSvg: widget._heightSvg,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00382B), 
                textStyle: const TextStyle(
                  color: Colors.white 
                
                )
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ValueControlScreen(),
                  ),
                );
              },
              child: const Text("Controle do Estoque",style: TextStyle(color: Colors.white,),
            ),
            ),
          ),
        ],
      ),
    );
  }
}
