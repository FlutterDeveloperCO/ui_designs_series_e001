import 'package:flutter/material.dart';

import 'package:ui_designs_series_e001/widgets/background_widget.dart';
import 'package:ui_designs_series_e001/widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          _BodyHomePage(),
        ],
      ),
    );
  }
}

class _BodyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TitleWidget(),
          
        ],
      ),
    );
  }
}
