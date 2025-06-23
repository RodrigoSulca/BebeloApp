import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double widthButon;
  final double heightButton;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.widthButon,
    required this.heightButton,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: widthButon, vertical: heightButton),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold
        )
      ),
    );
  }
}
