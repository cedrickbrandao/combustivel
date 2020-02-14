import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:mobx/mobx.dart';
part 'goa_model.g.dart';

class GoaModel = _GoaModelBase with _$GoaModel;

abstract class _GoaModelBase with Store {
  @observable
  var gasolinaController = MoneyMaskedTextController();
  @observable
  var alcoolController = MoneyMaskedTextController();
  @observable
  var result = "Compensa utilizar ?";
  @observable
  var busy = false;
  @observable
  var complete = false;
  @observable
  var color = Colors.deepPurple;

  @action
  Future calcular() {
    double gasolina = double.parse(
            gasolinaController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;
    double alcool = double.parse(
            alcoolController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;

    complete = false;
    busy = true;
    color = Colors.blue;

    return new Future.delayed(Duration(milliseconds: 800), () {
      double resultado = alcool / gasolina;

      if (resultado >= 0.7) {
        result =
            "Compensa utilizar Gasolina ${resultado.toStringAsPrecision(2)}";
      } else {
        result = "Compensa utilizar Alcool ${resultado.toStringAsPrecision(2)}";
      }
      complete = true;
      busy = false;
    });
  }

  @action
  zerar() {
    gasolinaController = MoneyMaskedTextController();
    alcoolController = MoneyMaskedTextController();
    complete = false;
    busy = false;
    color = Colors.deepPurple;
  }
}
