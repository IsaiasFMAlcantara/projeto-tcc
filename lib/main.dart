import 'package:flutter/material.dart';
import 'raiz.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => MyHomePage(),
      },
    ),
  );
}
