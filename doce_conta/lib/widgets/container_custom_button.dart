import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerCustomButton extends StatefulWidget {
  const ContainerCustomButton(
      {super.key,
      required this.btnText,
      this.onPressedFunction,
      required this.widhtContainer,
      required this.heightContainer,
      required this.svgPath,
      required this.widhtSvg,
      required this.heightSvg,
      });

  final String btnText;
  final String svgPath;
  final VoidCallback? onPressedFunction;
  final double widhtContainer;
  final double heightContainer;
  final double widhtSvg;
  final double heightSvg;

  @override
  State<ContainerCustomButton> createState() => _ContainerCustomButtonState();
}

class _ContainerCustomButtonState extends State<ContainerCustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onPressedFunction,
        child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff003326),
              borderRadius: BorderRadius.circular(20),
            ),
            width: widget.widhtContainer,
            height: widget.heightContainer,
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(children: [
              const SizedBox(height: 15),
              Center(
                  child: Text(
                widget.btnText,
                style: const TextStyle(color: Colors.white),
              )),
              const SizedBox(height: 25),
              SvgPicture.asset(
                widget.svgPath,
                // ignore: deprecated_member_use
                color: const Color(0xFFF5A001),
                height: widget.heightSvg, width: widget.widhtSvg,
              ),
            ])));
  }
}
