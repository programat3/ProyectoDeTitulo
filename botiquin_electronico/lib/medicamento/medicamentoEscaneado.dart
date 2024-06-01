import 'package:flutter/material.dart';

import 'package:supabase/supabase.dart';

class Medicina extends StatelessWidget {
  final String nombre;
  const Medicina(this.nombre,{super.key});


  @override
  Widget build(BuildContext context) {
    final _future = SupabaseClient("https://lpcsofclckzmbbdchaog.supabase.co", "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxwY3NvZmNsY2t6bWJiZGNoYW9nIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU0NjExMzMsImV4cCI6MjAzMTAzNzEzM30.eCySPQNzOEgBWlDDRJ73EbX59Y7sfFGvRe25RQr0pS8").from('RepSKU').select().eq('SKU', nombre);
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