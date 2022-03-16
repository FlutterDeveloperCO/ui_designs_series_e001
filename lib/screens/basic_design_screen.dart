import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          NameandScore()
        ],
      ),
    );
  }
}

class NameandScore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Elephantland World',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text('Earth Planet, Universe',style: TextStyle(color: Colors.grey[600]),)
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star_outlined,
            color: Colors.amber[900],
          ),
          Text('47', style: TextStyle(fontWeight: FontWeight.bold,),)
        ],
      ),
    );
  }
}
