import 'package:botiquin_electronico/medicamento/medicamentoEscaneado.dart';
import 'package:flutter/material.dart';
import 'package:botiquin_electronico/internal.dart';
import 'package:path_provider/path_provider.dart';
import 'package:csv/csv.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

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
      appBar: AppBar(
        title: const Text('Tu Botiquín'),
        actions: [
          IconButton(
            icon: const Icon(Icons.picture_as_pdf),
            onPressed: exportarPDF,
          ),
        ],
      ),
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
                color: const Color(0xFFF2E0D7), // Color de fondo azul claro
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Botiquín Electrónico',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20), // Espacio entre texto y botones
                  Visibility(
                    visible: bot.length() > 0,
                    replacement: const Center(
                      child: Text('No hay medicamentos en el botiquín'),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
