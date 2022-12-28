import 'package:flutter/material.dart';
import 'package:fl_design/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //change color status bar clock, battery and signal iOS and Android!
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home-screen',
      routes: {
        'home-screen': (_) => const HomeScreen(),
        'basic-design': (_) => const BasicDesignScreen(),
        'scroll-design': (_) => const ScrollDesignScreen(),
      },
    );
  }
}
