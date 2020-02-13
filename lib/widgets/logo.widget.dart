import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 60),
        Image.asset(
          "assets/images/aog-white.png",
          height: 80,
        ),
        SizedBox(height: 20),
        Text(
          "Alcool ou Gasolina",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "BigShoulder",
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
