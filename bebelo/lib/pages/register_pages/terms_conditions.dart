import 'package:flutter/material.dart';
import 'package:bebelo/components/button.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  void changePage(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terminos y Condiciones',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: screenWidth,
                height: 15,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      child: Container(
                        width: screenWidth,
                        height: 50,
                        color: Colors.grey[300],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: Container(
                        width: screenWidth,
                        height: 50,
                        color: Colors.lightGreenAccent,
                      ),
                    ),    
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (bool){}),
                  Text(
                    'Acepto los terminos y condiciones \nde Bebelo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (bool){}),
                  Text(
                    'Quiero recibir promociones y \ncupones de Bebelo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              
              CustomButton(
                text: 'Continuar',
                onTap: () {
                  changePage(context, '/home');
                },
                widthButon: 140,
                heightButton: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
