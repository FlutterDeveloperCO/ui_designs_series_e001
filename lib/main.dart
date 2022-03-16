import 'package:flutter/material.dart';

import 'screens/basic_design_screen.dart';
import 'screens/scroll_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Designs Series 001',
      initialRoute: 'scroll_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
      },
    );
  }
}