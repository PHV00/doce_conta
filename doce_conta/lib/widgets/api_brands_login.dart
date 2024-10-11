import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApiBrandsLogin extends StatelessWidget {
  const ApiBrandsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("img/google_icon.svg", width: 24, height: 24,),
        const SizedBox(width: 40,),
        SvgPicture.asset("img/microsoft_icon.svg", width: 24, height: 24,),
        const SizedBox(width: 40,),
        SvgPicture.asset("img/apple_icon.svg", width: 30, height: 30,),
      ],
    );
  }
}