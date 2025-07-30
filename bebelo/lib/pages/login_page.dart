import 'package:bebelo/components/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void changePage(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          SizedBox(height: 45),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenWidth* 1.5,
              height: screenWidth * 1.3,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/TestBG.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 40, 30, 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
              width: 330,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    SizedBox(
                      width: screenWidth,
                      height: 50,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            child: CustomButton(
                              text: 'Registrarse',
                              onTap: () {
                                changePage(context, '/register');
                              },
                              bgColor: Colors.grey[300],
                              widthButon: 40,
                              heightButton: 10,
                            ),
                          ),
                          Positioned(
                            left: 130,
                            child: CustomButton(
                              text: 'Iniciar Sesion',
                              onTap: () {
                                
                              },
                              widthButon: 20,
                              heightButton: 10,
                            ),
                          ),
                          
                          
                        ],
                      ),
                    ),

                  const SizedBox(height: 30),
                  Center(
                    child: Text(
                    'Bienvenido a Bebelo',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Correo',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      border: UnderlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 70),

                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      text: 'Iniciar Sesion',
                      onTap: () {
                        changePage(context, '/home');
                      },
                      widthButon: 20,
                      heightButton: 20,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Center(
                    child: Text(
                      'Olvidaste tu Contraseña?',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              ),
            )   
          ),
        ],
      ),
    );
  }
}
