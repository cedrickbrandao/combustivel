import 'dart:io';

import 'package:flutter_masked_text/flutter_masked_text.dart';

class GoaBloc {
  var gasolinaController = MoneyMaskedTextController();
  var alcoolController = MoneyMaskedTextController();
  var result = "Compensa utilizar ?";
  var busy = false;
  var complete = false;

  Future calculo(double gas, double alc) async {
    return new Future.delayed(Duration(seconds: 2), () {
      return gas / alc;
    });
  }

  calcular() {
    double gasolina = double.parse(
            gasolinaController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;
    double alcool = double.parse(
            alcoolController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;

    complete = false;
    busy = true;

    return new Future.delayed(Duration(seconds: 2), () {
      double resultado = alcool / gasolina;

      if (resultado >= 0.7) {
        result = "Compensa utilizar Gasolina";
      } else {
        result = "Compensa utilizar Alcool";
      }
    });
  }

  zerar() {
    gasolinaController = MoneyMaskedTextController();
    alcoolController = MoneyMaskedTextController();
    complete = false;
    busy = false;
  }
}
