import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double widthButon;
  final double heightButton;
  final double? fontSize;
  final Color? bgColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.widthButon,
    required this.heightButton,
    this.fontSize = 16,
    this.bgColor = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: widthButon,
          vertical: heightButton,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
