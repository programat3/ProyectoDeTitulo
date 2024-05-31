import 'package:flutter/material.dart';



class Medicina extends StatelessWidget {
  final nombre;
  const Medicina(this.nombre,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2879C2), // Color de fondo azul
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width *
                1, // Ancho máximo del contenedor
            child: Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color(0xFFF2E0D7), // Color de fondo azul claro
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Medicamento Escaneado',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                      height:
                          20), // Añadir un espacio entre el texto y los botones
                  Text(
                    'Medicamento: $nombre',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}