import 'package:flutter/material.dart';

class PromoDisplay extends StatelessWidget {
  final String imgPath;

  const PromoDisplay({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imgPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
