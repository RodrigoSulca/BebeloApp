import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Card(
      color: const Color.fromARGB(255, 41, 39, 39),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Icon(Icons.circle_outlined, color: Colors.deepPurple, size: 35),
            const SizedBox(width: 10),
            Text(
              'Av Example 122',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Expanded(child: Container()),
            Icon(Icons.search, color: Colors.white, size: 35),
          ],
        ),
      )
      
      )
    );
    
  }
}
