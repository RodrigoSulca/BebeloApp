import 'package:bebelo/components/bottom_navapp.dart';
import 'package:bebelo/components/button.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  void changePage(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, size: 40, color: Colors.black),
              onPressed: () {
                changePage(context, '/home');
              },
            ),
            Image.asset(
              'assets/products/Item1.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Center(
              child: Text(
              'Product Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            ),
            Text(
              'Price',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 30,
                color: Colors.green,
              ),
            ),
            Text(
              'Product Desc',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 25,
              ),
            ),
            Center(
              child: CustomButton(
              text: 'Añadir al Carrito',
              onTap: (){},
              widthButon: 60,
              heightButton: 15
            ),
            )
            
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 0, onItemTapped: (int a){}),
    );
  }
}
