import 'package:flutter/material.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({
    super.key, required this.fontSize,
  });
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Movivo',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Source_Code_Pro',
      ),
    );
  }
}