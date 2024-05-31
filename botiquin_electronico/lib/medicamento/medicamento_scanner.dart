import 'package:botiquin_electronico/medicamento/medicamentoEscaneado.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:async';
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
  Future<String> getMedicamento(String sku) async{
    final supabase = Supabase.instance.client;
    med = '';
    final data = await supabase.from('RepSKU').select().eq('SKU', sku);
                          if (data.length == 0) {
                              print('error ${data}, with barcode ${sku}');
                            } 
                          else {
                              print('Medicamento: ${data[0]['Nombre']}');
                              med = data[0]['Nombre']; 
                            }
    return(med);
  }

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
                      data = await getMedicamento(barcode);
                      } on PlatformException {
                        barcodeScanRes =
                            'Error al escanear el código de barras.';
                      }
                      
                      setState((){
                        med = data;
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
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Medicina(med)),
                        );
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
                      child: Text(
                        'Información de $med',
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
