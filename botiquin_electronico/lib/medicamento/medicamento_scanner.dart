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
                    'Escanea Tu Medicamento',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                      height:
                          20),
                   // Añadir un espacio entre el texto y los botones
                  ElevatedButton(
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
                      
                      setState((){
                        med = barcode;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal:
                              20), // Ajusta los valores de padding según sea necesario
                      backgroundColor: Color(0xFF2879C2),
                      elevation: 0,
                      side: BorderSide(color: Colors.white, width: 2),
                    ),
                    child: const Text(
                      'Escanear SKU',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                      height:
                          10), // Espacio entre el botón y el texto del código de barras
                   Visibility(
                    visible: med != '',
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal:
                                20), // Ajusta los valores de padding según sea necesario
                        backgroundColor: Color(0xFF2879C2),
                        elevation: 0,
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      child: FutureBuilder(
                        future: Supabase.instance.client
                                .from('EcoFarmacias')
                                .select().eq('SKU', med),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.done) {
                            if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else if (snapshot.hasData) {
                              final data = snapshot.data as List;
                                this.med = data[0]['Nombre'];
                              return Text(
                                'Buscar Medicamento ${data[0]['Nombre']}',
                                style: TextStyle(fontSize: 18, color: Colors.white),
                              );
                            }
                          }
                          return const CircularProgressIndicator();
                        },
                      ),
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Medicina(med)),
                        );
                      },
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
