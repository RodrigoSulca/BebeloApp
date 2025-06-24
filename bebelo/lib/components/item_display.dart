import 'package:flutter/material.dart';

class ItemDisplay extends StatelessWidget {
  final String imgPath;
  final VoidCallback onTap;

  const ItemDisplay({
    super.key,
    required this.imgPath,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
            const Text('Desc', style: TextStyle(color: Colors.grey)),
            const Text('Price', style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
