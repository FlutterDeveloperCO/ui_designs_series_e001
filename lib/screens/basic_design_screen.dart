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
          NameandScore(),
          Buttons(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant. They are an informal grouping within the proboscidean family Elephantidae. Elephantidae is the only surviving family of proboscideans; extinct members include the mastodons. Elephantidae also contains several extinct groups, including the mammoths and straight-tusked elephants. African elephants have larger ears and concave backs, whereas Asian elephants have smaller ears, and convex or level backs.',
              textAlign: TextAlign.justify,
            ),
          )
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Elephantland World',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                'Earth Planet, Universe',
                style: TextStyle(color: Colors.grey[600]),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star_outlined,
            color: Colors.amber[900],
          ),
          Text(
            '47',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CustomButton(
            icon: Icons.call_rounded,
            text: 'CALL',
          ),
          CustomButton(
            icon: Icons.location_on_sharp,
            text: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 35,
          color: Colors.blueAccent,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
      ],
    );
  }
}
