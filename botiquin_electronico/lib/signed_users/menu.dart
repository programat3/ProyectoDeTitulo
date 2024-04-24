import 'package:botiquin_electronico/signed_users/new_botiquin.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MyAppState();
}

class _MyAppState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botiquín Electrónico'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewBotiquin()),
                );
              },
              child: const Text('Nuevo Botiquín'),
            ),
            ElevatedButton(
              onPressed: () {
                //TODO: Add the code to navigate to the OCR to add medicine
              },
              child: const Text('Escanear Medicamento'),
            ),
          ],
        ),
      ),
    );
      }
}