import 'package:bebelo/components/bottom_navapp.dart';
import 'package:bebelo/components/item_display.dart';
import 'package:bebelo/components/promo_display.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void changePage(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEAEA),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),

            // Barra de dirección y búsqueda
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 45,
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'Dirección',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(Icons.search, color: Colors.white),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Carrusel
            SizedBox(
              height: 100,
              child: PageView.builder(
                itemCount: 3,
                controller: PageController(viewportFraction: 0.7),
                itemBuilder:
                    (context, index) =>
                        PromoDisplay(imgPath: 'assets/promos/Promo1.jpg'),
              ),
            ),

            const SizedBox(height: 10),
            // Indicador de carrusel (simulado con puntos)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.circle, size: 10, color: Colors.blue),
                SizedBox(width: 5),
                Icon(Icons.circle, size: 10, color: Colors.grey),
                SizedBox(width: 5),
                Icon(Icons.circle, size: 10, color: Colors.grey),
              ],
            ),

            const SizedBox(height: 20),

            // Categorías
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _buildCategory('Cervezas'),
                  _buildCategory('Vinos'),
                  _buildCategory('Licores'),
                  _buildCategory('Combos'),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Título de sección
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sección1',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Productos
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.7,
                  children: [
                    ItemDisplay(
                      imgPath: 'assets/products/Item1.jpg',
                      onTap: () {
                        changePage(context, '/product_detail');
                      },
                    ),
                    ItemDisplay(
                      imgPath: 'assets/products/Item2.png',
                      onTap: () {
                        changePage(context, '/product_detail');
                      },
                    ),
                    ItemDisplay(
                      imgPath: 'assets/products/Item3.jpg',
                      onTap: () {
                        changePage(context, '/product_detail');
                      },
                    ),
                    ItemDisplay(
                      imgPath: 'assets/products/Item4.png',
                      onTap: () {
                        changePage(context, '/product_detail');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // BottomNavigationBar vacía (como pediste)
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: 0,
        onItemTapped: (int a) {},
      ),
    );
  }

  // Widget categoría
  Widget _buildCategory(String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(height: 5),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
