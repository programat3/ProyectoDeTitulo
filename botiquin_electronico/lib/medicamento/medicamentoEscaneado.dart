import 'package:botiquin_electronico/internal.dart';
import 'package:botiquin_electronico/medicamento/lectura.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:botiquin_electronico/main.dart';

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
      body: Container(
        decoration: const BoxDecoration(
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
                color: Color.fromARGB(
                    255, 255, 255, 255), // Color de fondo azul claro
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Color(0xFF1E2952), width: 2),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32, top: 24),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF1E2952),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          FutureBuilder(
                            future: gemini
                                .text(
                                    'Para qué sirve $nombre en sólo 35 caracteres')
                                .then((value) =>
                                    value?.output ??
                                    'No se encontró la descripción'), // Cambiar la descripción
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                } else if (snapshot.hasData) {
                                  final composition = snapshot.data as String;
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        color: Color(0xFF1E2952),
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: w,
                                                child: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal:
                                                          12.0), // Ajusta el margen como desee

                                                  child: Text(
                                                    '$nombre',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                    textScaleFactor: 2,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.fill,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: w,
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 8.0,
                                                    horizontal:
                                                        8.0), // Ajusta el margen como desees

                                                child: Text(
                                                  '¿Para qué sirve?\n $composition',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                  ),
                                                ),
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
                                              return Text(
                                                  'Error: ${snapshot.error}');
                                            } else if (snapshot.hasData) {
                                              final sugerencias =
                                                  snapshot.data as String;
                                              return Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.symmetric(
                                                        vertical: 8.0,
                                                        horizontal:
                                                            8.0), // Ajusta el margen como desees
                                                    child: FittedBox(
                                                      fit: BoxFit.fill,
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            width: w,
                                                            child: Text(
                                                              'Sugerencias: \n $sugerencias',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                                'Nombre: $nombre'
                                                                '¿Para qué sirve?: $composition'
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
                                              );
                                            }
                                          }
                                          return CircularProgressIndicator();
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
                    ),
                  ),
                  const SizedBox(height: 32), // Espacio entre los botones
                  SizedBox(
                    width: 250, // Ancho máximo
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 24,
                            horizontal:
                                24), // Ajusta los valores de padding según sea necesario
                        backgroundColor: const Color(0xFF2879C2),
                        elevation: 0,
                      ),
                      child: Text(
                        'Añadir al botiquín',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      onPressed: () {
                        bot.add(nombre);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('Se añadió $nombre al botiquín')),
                        );
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyApp(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 24,
                        ),
                        backgroundColor: Colors.white,
                        elevation: 0,
                        side: const BorderSide(
                          color: Color(0xFF2879C2),
                          width: 2,
                        ),
                      ),
                      child: const Text(
                        'Volver',
                        style: TextStyle(
                          fontSize:
                              22, // Ajusta el tamaño de fuente para que sea igual que los otros botones
                          color: Color(0xFF2879C2),
                        ),
                      ),
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
