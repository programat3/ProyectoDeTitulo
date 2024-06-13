import 'package:botiquin_electronico/botiquin/botiquin.dart';
import 'package:botiquin_electronico/keys.dart';
import 'package:botiquin_electronico/medicamento/medicamento_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:local_auth/local_auth.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://lpcsofclckzmbbdchaog.supabase.co',
    anonKey: supabase_key,
  );

  Gemini.init(apiKey: gemini_key);
  
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF2879C2), // Color de fondo azul
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1, // Ancho máximo del contenedor
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
                  const SizedBox(height: 20), // Añadir un espacio entre el texto y los botones
                  SizedBox(
                    width: 200, // Ancho máximo
                    child: ElevatedButton(
                      onPressed: () {
                        _authenticateAndNavigate(context, const Botiquin());
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 20), // Ajusta los valores de padding según sea necesario
                        backgroundColor: const Color(0xFF2879C2),
                        elevation: 0,
                        side: const BorderSide(color: Colors.white, width: 2),
                      ),
                      child: const Text(
                        'Tus Medicamentos',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Espacio entre los botones
                  SizedBox(
                    width: 200, // Ancho máximo
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MedicamentoSKU()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 20), // Ajusta los valores de padding según sea necesario
                        backgroundColor: const Color(0xFF2879C2),
                        elevation: 0,
                        side: const BorderSide(color: Colors.white, width: 2),
                      ),
                      child: const Text(
                        'Escanear Medicina',
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

  Future<void> _authenticateAndNavigate(BuildContext context, Widget destination) async {
    final LocalAuthentication auth = LocalAuthentication();
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Por favor autentícate para acceder a tus medicamentos',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } catch (e) {
      authenticated = false;
    }

    if (authenticated) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Botiquin()),
      );
    }
  }
}