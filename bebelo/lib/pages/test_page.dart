import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Text(
          'Numero de telefono',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
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
    );
    
  }
}
