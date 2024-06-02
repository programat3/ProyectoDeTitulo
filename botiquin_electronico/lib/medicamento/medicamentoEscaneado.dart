import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'package:supabase_flutter/supabase_flutter.dart';



class Medicina extends StatelessWidget {
  final String sku;
  const Medicina(this.sku,{super.key});

  @override
  Widget build(BuildContext context) {
    final gemini = Gemini.instance;
    final _future = Supabase.instance.client
      .from('EcoFarmacias')
      .select().eq('SKU', sku);
    return Scaffold(
      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final data = snapshot.data as List;
              if (data.isEmpty) {
                return Text('No se encontró el medicamento');
              }
              final medicamento = data[0];
              final nombre = medicamento['Nombre'];
              return Scaffold(
                body: FutureBuilder(
                  future: gemini.text('Para qué sirve $nombre en sólo 25 caracteres').then((value) => value?.output ?? 'No se encontró la descripción'), // Cambiar la descripción
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
                            FutureBuilder(future: gemini.text('Sugerencias para el consumo de $nombre en sólo 55 caracteres').then((value) => value?.output ?? 'No se encontraron las sugerencias de $nombre'), 
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.done) {
                                if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                } else if (snapshot.hasData) {
                                  final contraindicaciones = snapshot.data as String;
                                  return Text('Sugerencias: $contraindicaciones');
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
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}