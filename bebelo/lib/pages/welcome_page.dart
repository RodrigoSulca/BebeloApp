import 'package:bebelo/components/button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void changePage(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo
          Image.asset(
            'assets/WelcomeBG.png', // Asegúrate de poner la imagen aquí
            fit: BoxFit.cover,
          ),

          // Contenido encima
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 40),

                // Texto superior
                Column(
                  children: const [
                    Text(
                      'Tácticos Team',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Bébelo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                // Botón
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: CustomButton(
                    text: 'Iniciar Sesion',
                    widthButon: 100,
                    onTap: () {
                      changePage(context, '/login');
                    },
                    heightButton: 20,
                  ),
                ),

                const SizedBox(height: 15),

                // Texto inferior
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'No tienes una cuenta? ',
                      style: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Registrarse',
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          // Puedes agregar un recognizer para navegación si lo deseas
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
