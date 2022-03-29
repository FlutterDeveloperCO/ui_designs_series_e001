import 'dart:ui';

import 'package:flutter/material.dart';

class CardsTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        const TableRow(
          children: [
            _SingleCard(
              text: 'General',
              color: Colors.blue,
              icon: Icons.surfing_sharp,
            ),
            _SingleCard(
              text: 'Transport',
              color: Colors.purpleAccent,
              icon: Icons.car_rental_rounded,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              text: 'Shopping',
              color: Colors.pink[300]!,
              icon: Icons.shopping_bag,
            ),
            const _SingleCard(
              text: 'Bills',
              color: Color.fromARGB(255, 56, 150, 130),
              icon: Icons.monetization_on_rounded,
            ),
          ],
        ),
        const TableRow(
          children: [
            _SingleCard(
              text: 'Entertainment',
              color: Color.fromARGB(255, 19, 32, 130),
              icon: Icons.local_movies_outlined,
            ),
            _SingleCard(
              text: 'Grocery',
              color: Color.fromARGB(255, 90, 157, 35),
              icon: Icons.local_grocery_store,
            ),
          ],
        ),
        const TableRow(
          children: [
            _SingleCard(
              text: 'Gifts',
              color: Color.fromARGB(255, 193, 90, 42),
              icon: Icons.card_giftcard_sharp,
            ),
            _SingleCard(
              text: 'Others',
              color: Color.fromARGB(255, 51, 13, 141),
              icon: Icons.devices_other_sharp,
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const _SingleCard(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'scroll_screen'),
      child: _SingleCardBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: color,
              child: Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
              radius: 35,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 20, color: color),
            ),
          ],
        ),
      ),
    );
  }
}

class _SingleCardBackground extends StatelessWidget {

  final Widget child;

  const _SingleCardBackground({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 175,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
