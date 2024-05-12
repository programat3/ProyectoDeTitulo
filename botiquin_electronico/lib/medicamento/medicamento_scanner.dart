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
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            String barcodeScanRes;
            try {
              barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                '#ff6666',
                'Cancelar',
                true,
                ScanMode.BARCODE,
              );
              print(barcodeScanRes);
            } on PlatformException {
              barcodeScanRes = 'Error al escanear el código de barras.';
            }
            setState(() {
                barcode = barcodeScanRes;
            });
          },
          child: const Text('Escanear SKU'),
        ),
        Text(barcode),
      ],
    );
  }
}