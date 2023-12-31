import 'package:flutter/material.dart';

class SearchCustomIcon extends StatelessWidget {
  final IconData my_icon;
  double hight;
  double width;
final void Function()? onPressed;
  SearchCustomIcon(
      {required this.hight, required this.width, required this.my_icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
          child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          my_icon,
          size: 28,
        ),
      )),
    );
  }
}
