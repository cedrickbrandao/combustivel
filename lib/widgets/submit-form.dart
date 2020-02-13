import 'package:combustivel/widgets/button.widget.dart';
import 'package:combustivel/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var busy = false;
  Function submitFuncion;

  SubmitForm(
      {@required this.gasCtrl,
      @required this.alcCtrl,
      @required this.busy,
      @required this.submitFuncion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GoaTextInput(
          label: "Gasolina",
          controller: gasCtrl,
        ),
        GoaTextInput(
          label: "Alcool",
          controller: alcCtrl,
        ),
        GoaButton(
          text: "Calcular",
          busy: this.busy,
          invert: false,
          func: submitFuncion,
        )
      ],
    );
  }
}
