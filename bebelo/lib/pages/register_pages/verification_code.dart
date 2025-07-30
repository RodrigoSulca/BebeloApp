import 'package:flutter/material.dart';
import 'package:bebelo/components/button.dart';
class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
                'Verifica tu numero de telefono',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Ingresa el codigo que te enviamos por SMS a +51 XXX XXX XXX',
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
                        width: 230,
                        height: 50,
                        color: Colors.lightGreenAccent,
                      ),
                    ),    
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 10,
                children: [
                  Container(
                    width: 50,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              CustomButton(
                text: 'Continuar',
                onTap: () {
                  changePage(context, '/terms_conditions');
                },
                widthButon: 140,
                heightButton: 20,
              ),
              
              
            ],
          ),
        ),
      )
    );
  }
}
