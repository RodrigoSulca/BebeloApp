import 'package:bebelo/components/button.dart';
import 'package:flutter/material.dart';

class RegisterNumber extends StatelessWidget {
  const RegisterNumber({super.key});

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
                'Ingresa tu numero de telefono',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Te enviaremos un codigo de verificacion por SMS',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
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
                        width: 150,
                        height: 50,
                        color: Colors.lightGreenAccent,
                      ),
                    ),    
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Numero de telefono',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        // Bandera (usa cualquier ícono o imagen)
                        Image.asset(
                          'assets/icons/PeruFlag.png', // pon aquí tu imagen de bandera
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 8),
                        Text('+51', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 16),
                        // Input de teléfono
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration.collapsed(
                              hintText: 'XXX XXX XXX',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
              CustomButton(
                text: 'Continuar',
                onTap: () {
                  changePage(context, '/verification_code');
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
