import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Inicia Sesión con tu correo electrónico';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var email;
    var password;
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Ingrese su email',
                icon: const Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                        child: const Icon(Icons.email))),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Porfavor ingrese su email';
                }
                email = value;
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                hintText: 'Ingrese su contraseña',
                icon: const Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                        child: const Icon(Icons.lock))),
                obscureText: true,
              
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Porfavor ingrese su contraseña';
                }
                password = value;
                return null;
              },
        
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () async{
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    var response = await http.get(
                      Uri.parse('http://10.0.2.2:8080/users/$email')
                    );
                    if(response.statusCode == 200){
                      final user = jsonDecode(response.body);
                      if(user['password'] == sha256.convert(utf8.encode(password)).toString()){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Inicio de sesión exitoso')),
                        );
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Contraseña incorrecta')),
                        );
                      }
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Usuario no encontrado')),
                      );
                    }
                  }
                },
                child: const Text('Entrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}