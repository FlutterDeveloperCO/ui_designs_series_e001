import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.green],
          ),
        ),
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            ScreenOne(),
            Container(
              color: Color.fromARGB(255, 90, 193, 233),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Welcome',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      shape: StadiumBorder()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Background(),
      MainContent(),
    ]);
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: double.infinity,
      color: Color.fromARGB(255, 90, 193, 233),
      child: Image(
        image: AssetImage('assets/scroll.png'),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  final textStyle =
      TextStyle(fontSize: 55, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            '23°',
            style: textStyle,
          ),
          Text(
            'Wednesday',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
