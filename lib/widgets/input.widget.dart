import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class GoaTextInput extends StatelessWidget {
  String label;

  MoneyMaskedTextController controller;

  TextStyle defaultStyleText({double size}) {
    return TextStyle(
        fontFamily: "BigShoulder", fontSize: size, color: Colors.white);
  }

  GoaTextInput({@required this.label, @required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 100,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: defaultStyleText(size: 35),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            style: defaultStyleText(size: 45),
            decoration: InputDecoration(border: InputBorder.none),
            controller: controller,
          ),
        ),
      ],
    );
  }
}
