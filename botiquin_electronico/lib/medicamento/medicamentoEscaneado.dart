import 'package:botiquin_electronico/medicamento/medicamento_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class Medicina extends StatelessWidget {
  final String nombre;
  const Medicina(this.nombre,{super.key});

  @override
  Widget build(BuildContext context) {
    final gemini = Gemini.instance;
    return Scaffold(
      bottomNavigationBar: SizedBox(height: 128, width: 128,child: BackButton(color: Colors.deepPurple, onPressed:()=>Navigator.push(context, MaterialPageRoute(builder: (context) => MedicamentoSKU(),) ),)),
      body: FutureBuilder(
        future: gemini.text('Para qué sirve $nombre en sólo 35 caracteres').then((value) => value?.output ?? 'No se encontró la descripción'), // Cambiar la descripción
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final composition = snapshot.data as String;
              return Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(color: Colors.blue,child: Text('Nombre: $nombre', style: TextStyle(color: Colors.white) ,textScaler: TextScaler.linear(2),),),
                    Text('¿Para qué sirve?: $composition', textScaler: TextScaler.linear(2),),
                    FutureBuilder(future: gemini.text('Sugerencias para el consumo de $nombre en sólo 40 caracteres').then((value) => value?.output ?? 'No se encontraron las sugerencias de $nombre'), 
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          final sugerencias = snapshot.data as String;
                          return Container(color: Colors.deepOrange,child: Text('Sugerencias: $sugerencias',style: TextStyle(color: Colors.white) ,textScaler: TextScaler.linear(2),));
                        }
                      }
                      return const CircularProgressIndicator();
                    }),
                  ],
                ),
              );
            }
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}