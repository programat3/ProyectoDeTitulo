import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';



class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Crea tu usuario';

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
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Repita su contraseña',
                hintText: 'Repita su contraseña',
                icon: const Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                        child: const Icon(Icons.lock))),
                obscureText: true,
              
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Porfavor ingrese su contraseña';
                }
                else if(value != password){
                  return 'Las contraseñas no coinciden';
                }
                return null;
              },
        
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                    http.post(
                      Uri.parse('http://10.0.2.2:8080/users'),
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                      },
                      body: jsonEncode(<String, String>{
                        'email': email,
                        'password': password,
                      }),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}