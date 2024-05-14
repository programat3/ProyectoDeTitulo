import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:supabase/supabase.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class MedicamentoSKU extends StatefulWidget {
  const MedicamentoSKU({super.key});

  @override
  State<MedicamentoSKU> createState() => _MedicamentoSKUState();
}

class _MedicamentoSKUState extends State<MedicamentoSKU> {
  String barcode = '';

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
                          20), // Añadir un espacio entre el texto y los botones
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
                        print(barcodeScanRes);
                      } on PlatformException {
                        barcodeScanRes =
                            'Error al escanear el código de barras.';
                      }
                      setState(() {
                        barcode = barcodeScanRes;
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
                  Text(
                    barcode,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
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
