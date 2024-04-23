import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Email'),
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Password'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Sing Up'),
        ),
        ]
      )
    );
  }
}