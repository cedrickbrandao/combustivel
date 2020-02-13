import 'package:combustivel/blocs/goa.bloc.dart';
import 'package:combustivel/widgets/button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  Function resetFunc;
  var result = "";

  Success({this.result, @required this.resetFunc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(result,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 40,
                    fontFamily: "BigShoulder")),
          ),
          SizedBox(
            height: 20,
          ),
          GoaButton(
            text: "Calcular Novamente",
            busy: false,
            invert: true,
            func: resetFunc,
          )
        ],
      ),
    );
  }
}
