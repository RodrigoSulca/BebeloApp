import 'package:bebelo/components/shc_bnb.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  void changePage(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            IconButton(
              icon: Icon(Icons.arrow_back, size: 40, color: Colors.black),
              onPressed: () {
                changePage(context, '/home');
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: SHCBottomNB(),
    );
  }
}
