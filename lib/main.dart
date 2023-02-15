import 'package:flutter/material.dart';
import 'package:logbook_generator/widgets/links_container.dart';
import 'package:logbook_generator/widgets/shortlinks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Shortlinks(),
    );
  }
}