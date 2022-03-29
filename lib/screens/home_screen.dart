import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
import '../widgets/bottom_navigation_widget.dart';
import '../widgets/cards_table.dart';
import '../widgets/title_widget.dart';

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
      bottomNavigationBar: BottomNavigationWidget(),
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
          CardsTable(),
          
        ],
      ),
    );
  }
}
