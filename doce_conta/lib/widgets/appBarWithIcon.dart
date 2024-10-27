import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appbarwithicon extends StatefulWidget implements PreferredSizeWidget{
  const Appbarwithicon({super.key, required this.iconPath});

  final String iconPath;

  @override
  State<Appbarwithicon> createState() => _AppbarwithiconState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppbarwithiconState extends State<Appbarwithicon> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.arrow_back, color: Colors.white),
      centerTitle: true,
      title: SvgPicture.asset(
          widget.iconPath,
          height: 40,
          color: const Color(0xFFF5A001),
        ),
      backgroundColor: const Color(0xFF00382B),
    );
  }
}