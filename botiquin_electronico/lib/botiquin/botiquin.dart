import 'package:botiquin_electronico/medicamento/medicamentoEscaneado.dart';
import 'package:flutter/material.dart';
import 'package:botiquin_electronico/internal.dart';
import 'package:path_provider/path_provider.dart';
import 'package:csv/csv.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:botiquin_electronico/medicamento/medicamento_scanner.dart';

class Botiquin extends StatefulWidget {
  const Botiquin({Key? key}) : super(key: key);

  @override
  State<Botiquin> createState() => _BotiquinState();
}

class _BotiquinState extends State<Botiquin> {
  // Método para generar y mostrar el PDF del botiquín
  void exportarPDF() async {
    final pdf = pw.Document();

    // Contenido del PDF
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                pw.Text(
                  'Botiquín Electrónico',
                  style: pw.TextStyle(
                    fontSize: 20,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 20),
                // Aquí puedes agregar el contenido específico del botiquín
                // por ejemplo, los medicamentos en forma de lista
                pw.ListView.builder(
                  itemCount: bot.length(),
                  itemBuilder: (context, index) {
                    return pw.Text('${bot.get()[index]}');

                    
                  },
                ),
              ],
            ),
          );
        },
      ),
    );

    // Mostrar el PDF para compartir o imprimir
    await Printing.sharePdf(bytes: await pdf.save(), filename: 'botiquin.pdf');
  }

  @override
  Widget build(BuildContext context) {
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
                color:
                    Color.fromARGB(255, 255, 255, 255), // Color de fondo blanco
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Color(0xFF1E2952), width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bienvenido a tu Botiquín',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20), // Espacio entre texto y botones
                  Visibility(
                    visible: bot.length() > 0,
                    replacement: const Center(
                      child: Text('Agrega Tu primer Medicamento'),
                    ),
                    child: Expanded(
                      child: ListenableBuilder(
                        listenable: bot,
                        builder: (context, child) => ListView.builder(
                          itemCount: bot.length(),
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      bot.get()[index],
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {
                                      bot.remove(bot.get()[index]);
                                    },
                                  )
                                ],
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Medicina(bot.get()[index], false),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Espacio entre lista y botones
                  SizedBox(
                    width:
                        250, // Ancho máximo ajustado para botones más grandes
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MedicamentoSKU()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 24, // Aumento del padding vertical
                          horizontal: 24, // Aumento del padding horizontal
                        ),
                        backgroundColor: const Color(0xFF2879C2),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Agregar Medicina',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ), // Aumento del tamaño de fuente
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Espacio entre botones
                  SizedBox(
                    width: 250, // Ancho del botón de exportar PDF
                    child: ElevatedButton(
                      onPressed: exportarPDF,
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
                        'Compartir Botiquín',
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF2879C2),
                        ), // Aumento del tamaño de fuente
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
