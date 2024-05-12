import 'package:botiquin_electronico/medicamento/medicamento_scanner.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'users/login.dart';
import 'users/signup.dart';

Future<void> main() async{
  await Supabase.initialize(
    url: 'https://lpcsofclckzmbbdchaog.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxwY3NvZmNsY2t6bWJiZGNoYW9nIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU0NjExMzMsImV4cCI6MjAzMTAzNzEzM30.eCySPQNzOEgBWlDDRJ73EbX59Y7sfFGvRe25RQr0pS8',
  );
  runApp(const MaterialApp(home: MyApp(),));}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2879C2), // Color de fondo azul
        ),
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1, // Ancho máximo del contenedor
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20), // Ajusta los valores de padding según sea necesario
                        backgroundColor: Color(0xFF2879C2),
                        elevation: 0,
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      child: Text(
                        'Registrarse',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Espacio entre los botones
                  SizedBox(
                    width: 200, // Ancho máximo
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20), // Ajusta los valores de padding según sea necesario
                        backgroundColor: Color(0xFF2879C2),
                        elevation: 0,
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      child: Text(
                        'Iniciar Sesión',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Espacio entre los botones
                  SizedBox(
                    width: 200, // Ancho máximo
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MedicamentoSKU()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20), // Ajusta los valores de padding según sea necesario
                        backgroundColor: Color(0xFF2879C2),
                        elevation: 0,
                        side: BorderSide(color: Colors.white, width: 2),
                      ),
                      child: Text(
                        'Escanear',
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




