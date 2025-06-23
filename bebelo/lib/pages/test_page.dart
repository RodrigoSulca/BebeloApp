import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //print("Botón 1");
              },
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}