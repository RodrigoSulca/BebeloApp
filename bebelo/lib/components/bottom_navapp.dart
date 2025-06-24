import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });


 void changePage(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[300], // fondo gris claro
        border: Border(
          top: BorderSide(color: Colors.grey, width: 1), // borde superior gris
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home_outlined,color: Colors.black),
              onPressed: () {
                changePage(context, '/home');
              },
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                changePage(context, '/shopping_cart');
              },
            ),
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.receipt_long_outlined),
              onPressed: () {
                changePage(context, '/home');
              },
            ),
            label: 'Factura',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: () {
                changePage(context, '/home');
              },
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
