import 'package:flutter/material.dart';

class CustomFilterButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final String text;

  const CustomFilterButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: const Color.fromARGB(255, 41, 39, 39),
            padding: EdgeInsets.symmetric(vertical: 30),
            iconSize: 30,
          ),
          child: Icon(icon),
        ),
        Text(text, style: TextStyle(fontSize: 16, color: Colors.white)),
      ],
    );
  }
}
