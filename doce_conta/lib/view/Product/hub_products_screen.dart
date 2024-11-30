import 'package:doce_conta/view/Product/product_selection_screen.dart';
import 'package:doce_conta/widgets/container_custom_button.dart';
import 'package:flutter/material.dart';

class HubProducts extends StatefulWidget {
  const HubProducts({super.key});

  final double _widhtContainer = 140;
  final double _heightCOntainer = 140;
  final double _widhtSvg = 55;
  final double _heightSvg = 55;

  @override
  State<HubProducts> createState() => _HubProducts();
}

class _HubProducts extends State<HubProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff003326),
        title: const Text(
          "Produtos para precificação",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(  
        child: Padding(  
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
          child: Row(
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
                              builder: (context) => ProductSelectionScreen()));
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
                        heightSvg: widget._heightSvg),
                    ),
                    const SizedBox(height: 20),
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Sucos",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/drink.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg),
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
                        heightSvg: widget._heightSvg),
                    ),
                    const SizedBox(height: 20),  
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Salgados",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/croissant.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg),
                    ),
                    const SizedBox(height: 20),  
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Cafés",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/cafe.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg),
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
}
