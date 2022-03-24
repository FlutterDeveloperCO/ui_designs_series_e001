import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/basic_design_screen.dart';
import 'screens/home_screen.dart';
import 'screens/scroll_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Define theme color of the status bar elements.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Designs Series 001',
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (_) => HomeScreen(),
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
      },
    );
  }
}