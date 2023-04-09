import 'package:flutter/material.dart';

import 'logo_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logo Animation',
      theme: ThemeData(
          primaryColor: Colors.black,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Logo Animation'),
        ),
        body: const Center(
          child: LogoWidget(),
        ),
      ),
    );
  }
}
