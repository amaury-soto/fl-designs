import 'package:flutter/material.dart';
import 'package:fl_design/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll-design',
      routes: {
        'basic-design': (_) => const BasicDesignScreen(),
        'scroll-design': (_) => const ScrollDesignScreen(),
      
      },
    );
  }
}
