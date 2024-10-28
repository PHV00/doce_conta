import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApiBrandsLogin extends StatelessWidget {
  const ApiBrandsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/Images/google_icon.svg", width: 24, height: 24,),
        const SizedBox(width: 40,),
        SvgPicture.asset("assets/Images/microsoft_icon.svg", width: 24, height: 24,),
        const SizedBox(width: 40,),
        SvgPicture.asset("assets/Images/apple_icon.svg", width: 30, height: 30,),
      ],
    );
  }
}