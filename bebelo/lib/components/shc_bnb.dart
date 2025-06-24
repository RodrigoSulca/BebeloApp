import 'package:flutter/material.dart';
import 'package:bebelo/components/button.dart';

class SHCBottomNB extends StatelessWidget {
  const SHCBottomNB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFEAEAEA),
        border: const Border(top: BorderSide(color: Colors.grey, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Total',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 4),
              Text(
                'S/0.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          CustomButton(
            text: 'Continuar',
            onTap: () {},
            widthButon: 70,
            heightButton: 15,
          ),
        ],
      ),
    );
  }
}
