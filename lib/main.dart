import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc counter application',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc counter application'),
        ),
        body: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              const Text('Number'),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
