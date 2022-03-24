import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Clasify transaction', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Select the principal category of transaction please', style: TextStyle(fontSize: 20, color: Colors.white),)
          ],
        ),
        
      ),
    );
  }
}