import 'package:flutter/material.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class Medicina extends StatelessWidget {
  final String nombre;
  const Medicina(this.nombre,{super.key});


  @override
  Widget build(BuildContext context) {
    final _future = Supabase.instance.client
      .from('RepSKU')
      .select().eq('SKU', nombre);
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
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Medicamento: ${medicamento['Nombre']}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'SKU: ${medicamento['SKU']}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
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