import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';



class Medicina extends StatelessWidget {
  final String nombre;
  const Medicina(this.nombre,{super.key});

  @override
  Widget build(BuildContext context) {
    final gemini = Gemini.instance;
    return Scaffold(
      body: FutureBuilder(
        future: gemini.text('Para qué sirve $nombre en sólo 35 caracteres').then((value) => value?.output ?? 'No se encontró la descripción'), // Cambiar la descripción
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final composition = snapshot.data as String;
              return Column(
                children: [
                  Text('Nombre: $nombre'),
                  Text('¿Para qué sirve?: $composition'),
                  FutureBuilder(future: gemini.text('Sugerencias para el consumo de $nombre en sólo 35 caracteres').then((value) => value?.output ?? 'No se encontraron las sugerencias de $nombre'), 
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.hasData) {
                        final sugerencias = snapshot.data as String;
                        return Text('Sugerencias: $sugerencias');
                      }
                    }
                    return const CircularProgressIndicator();
                  }),
                ],
              );
            }
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}