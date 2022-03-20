import 'package:flutter/material.dart';

import 'dart:math';

class BackgroundWidget extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xff2E305F), Color(0xff202333)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Gradient
        Container(decoration: boxDecoration),

        //Pink Box
        Positioned(
          left: -30,
          top: -130,
          child: _PinkBox(),
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 196, 31, 138),
            Color.fromRGBO(241, 142, 172, 1),
          ]),
        ),
      ),
    );
  }
}
