import 'package:botiquin_electronico/medicamento/medicamentoEscaneado.dart';
import 'package:flutter/material.dart';
import 'package:botiquin_electronico/internal.dart';

class Botiquin extends StatefulWidget {
  const Botiquin({super.key});

  @override
  State<Botiquin> createState() => _BotiquinState();
}

class _BotiquinState extends State<Botiquin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tu Botiquín'),
      ),
      body: Center(
        child: Visibility(
          visible: bot.length() > 0,
          replacement: const Center(
            child: Text('No hay medicamentos en el botiquín'),
          ),
          child: ListenableBuilder(
            listenable: bot,
            builder: (context, child) => ListView.builder(
              itemCount: bot.length(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(bot.get()[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Medicina(bot.get()[index], false)),
                    );
                  },
                );
              },
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ListView.builder(
                itemCount: bot.length(),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(bot.get()[index]),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Medicina(bot.get()[index], false)),
                      );
                    },
                  );
                },
              )]
            ),
          ),
        ),
      ),
    );
  }
}