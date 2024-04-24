import 'package:flutter/material.dart';

class EscaneoDummy extends StatelessWidget {
  const EscaneoDummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
        Text('Escanear Medicamento', style: TextStyle(
          color: Colors.white,
          decoration: TextDecoration.none
        ),),
      ],
    );
  }
}