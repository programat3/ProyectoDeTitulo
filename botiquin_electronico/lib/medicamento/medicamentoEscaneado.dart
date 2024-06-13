import 'package:botiquin_electronico/internal.dart';
import 'package:botiquin_electronico/medicamento/lectura.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class Medicina extends StatelessWidget {
  final String nombre;
  final bool buscado;

  const Medicina(this.nombre, this.buscado, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gemini = Gemini.instance;
    final widthScreen = MediaQuery.of(context).size.width;
    final w = widthScreen * 0.8;
    final w6 = widthScreen * 0.3;

    return Scaffold(
      appBar: AppBar(
        title: Text('Medicina: $nombre'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2879C2), // Color de fondo azul
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color(0xFFF2E0D7), // Color de fondo azul claro
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Medicamento',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  FutureBuilder(
                    future: gemini
                        .text('Para qué sirve $nombre en sólo 35 caracteres')
                        .then((value) =>
                            value?.output ??
                            'No se encontró la descripción'), // Cambiar la descripción
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          final composition = snapshot.data as String;
                          return FittedBox(
                            fit: BoxFit.fill,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  color: Colors.blue,
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: w,
                                          child: Text(
                                            'Nombre: $nombre',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            textScaleFactor: 2,
                                          ),
                                        ),
                                        SizedBox(
                                          width: w6,
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Lectura(
                                                      'Nombre: $nombre'),
                                                ),
                                              );
                                            },
                                            icon: Icon(Icons.voice_chat),
                                            iconSize: w6 * 0.7,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.fill,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: w,
                                        child: Text(
                                          '¿Para qué sirve?: $composition',
                                          textScaleFactor: 2,
                                        ),
                                      ),
                                      SizedBox(
                                        width: w6,
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Lectura(
                                                    '¿Para qué sirve?: $composition'),
                                              ),
                                            );
                                          },
                                          icon: Icon(Icons.voice_chat),
                                          iconSize: w6 * 0.7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FutureBuilder(
                                  future: gemini
                                      .text(
                                          'Sugerencias para el consumo de $nombre en sólo 40 caracteres')
                                      .then((value) =>
                                          value?.output ??
                                          'No se encontraron las sugerencias de $nombre'),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      if (snapshot.hasError) {
                                        return Text('Error: ${snapshot.error}');
                                      } else if (snapshot.hasData) {
                                        final sugerencias =
                                            snapshot.data as String;
                                        return Column(
                                          children: [
                                            Container(
                                              color: Colors.deepOrange,
                                              child: FittedBox(
                                                fit: BoxFit.fill,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: w,
                                                      child: Text(
                                                        'Sugerencias: \n$sugerencias',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                        textScaleFactor: 2,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: w6,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  Lectura(
                                                                      'Sugerencias: \n$sugerencias'),
                                                            ),
                                                          );
                                                        },
                                                        icon: Icon(
                                                            Icons.voice_chat),
                                                        iconSize: w6 * 0.7,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .all<Color>(Colors
                                                            .green), // Cambia el color de fondo a verde
                                              ),
                                              child: Text(
                                                'Añadir al botiquín',
                                                style: TextStyle(
                                                  color: Colors
                                                      .white, // Color blanco del texto
                                                ),
                                              ),
                                              onPressed: () {
                                                bot.add(nombre);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                      content: Text(
                                                          'Se añadió $nombre al botiquín')),
                                                );
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        );
                                      }
                                    }
                                    return CircularProgressIndicator();
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                      }
                      return CircularProgressIndicator();
                    },
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
