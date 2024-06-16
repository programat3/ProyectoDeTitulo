import 'package:botiquin_electronico/main.dart';
import 'package:botiquin_electronico/medicamento/medicamentoEscaneado.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MedicamentoSKU extends StatefulWidget {
  const MedicamentoSKU({super.key});

  @override
  State<MedicamentoSKU> createState() => _MedicamentoSKUState();
}

class _MedicamentoSKUState extends State<MedicamentoSKU> {
  String barcode = '';
  String med = '';
  var data = '';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
      },
      child: Scaffold(
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
                      'Escanear Medicamentos',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 40,
                          top:
                              24), // Espacio inferior entre el Container y el botón
                      child: Container(
                        padding: EdgeInsets.only(
                          right: 16,
                          left: 16,
                          bottom: 32,
                        ), // Espacio interno alrededor del contenido
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF1E2952), width: 2,
                            // Ancho del borde
                          ),
                          borderRadius: BorderRadius.circular(
                              8), // Radio de borde para esquinas redondeadas
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ), // Espacio pequeño entre el título y el texto explicativo
                            Text(
                              'Obten Información de tu remedio\n',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '1. Toma la caja de tu remedio\n'
                              '2. Presiona el botón "Escanear"\n'
                              '3. Apunta al código de barras\n'
                              '4. Haz Click en el Botón Buscar',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () async {
                          String barcodeScanRes;
                          try {
                            barcodeScanRes =
                                await FlutterBarcodeScanner.scanBarcode(
                              '#ff6666',
                              'Cancelar',
                              true,
                              ScanMode.BARCODE,
                            );
                            barcode = barcodeScanRes;
                            barcode = barcode.trim();
                          } on PlatformException {
                            barcodeScanRes =
                                'Error al escanear el código de barras.';
                          }

                          setState(() {
                            med = barcode;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24, horizontal: 24),
                          backgroundColor: const Color(0xFF2879C2),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Escanear',
                          style: TextStyle(
                            fontSize:
                                22, // Ajusta el tamaño de fuente para que sea igual que el primer botón
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ), // Espacio entre el botón y el texto del código de barras
                    Visibility(
                      visible: med != '',
                      child: SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: 24,
                              horizontal: 24,
                            ),
                            backgroundColor: Color(0xFF2879C2),
                            elevation: 0,
                          ),
                          child: FutureBuilder(
                            future: Supabase.instance.client
                                .from('EcoFarmacias')
                                .select()
                                .eq('SKU', med),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.done) {
                                if (snapshot.hasError) {
                                  return Text('Error: ${snapshot.error}');
                                } else if (snapshot.hasData &&
                                    snapshot.data != null &&
                                    snapshot.data!.isNotEmpty) {
                                  final data = snapshot.data as List;
                                  this.med = data[0]['Nombre'];
                                  return Text(
                                    'Buscar ${data[0]['Nombre']}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  );
                                } else {
                                  med = '';
                                  return Text(
                                    'Medicamento no encontrado',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  );
                                }
                              }
                              return const CircularProgressIndicator();
                            },
                          ),
                          onPressed: () async {
                            if (med != '') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Medicina(med, true)),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
      ),
    );
  }
}
