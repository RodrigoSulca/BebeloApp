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
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenWidth * 1.5,
              height: screenWidth * 1.5,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/background.jpg',
                  ), // Reemplaza por tu imagen
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Bébelo',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          // Contenido blanco encima con borde superior redondeado
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              width: 350,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  // Selector Registrarse / Iniciar Sesión
                  Row(
                    children: [
                      // Registrarse
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Registrarse',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ),
                      // Iniciar Sesión (activo)
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Iniciar Sesion',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    'Bienvenido a Bebelo',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

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

                  const SizedBox(height: 30),

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
          ),
        ],
      ),
    );
  }
}
