import 'package:combustivel/widgets/logo.widget.dart';
import 'package:combustivel/widgets/submit-form.dart';
import 'package:combustivel/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var gasolinaController = MoneyMaskedTextController();
  var alcoolController = MoneyMaskedTextController();
  var result = "Compensa utilizar ?";
  var busy = false;
  var complete = false;
  var _color = Colors.deepPurple;

  Future calcular() {
    double gasolina = double.parse(
            gasolinaController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;
    double alcool = double.parse(
            alcoolController.text.replaceAll(new RegExp(r'[,.]'), '')) /
        100;

    setState(() {
      complete = false;
      busy = true;
      _color = Colors.blue;
    });

    return new Future.delayed(Duration(milliseconds: 800), () {
      double resultado = alcool / gasolina;

      setState(() {
        if (resultado >= 0.7) {
          result =
              "Compensa utilizar Gasolina ${resultado.toStringAsPrecision(2)}";
        } else {
          result =
              "Compensa utilizar Alcool ${resultado.toStringAsPrecision(2)}";
        }
        complete = true;
        busy = false;
      });
    });
  }

  zerar() {
    gasolinaController = MoneyMaskedTextController();
    alcoolController = MoneyMaskedTextController();
    complete = false;
    busy = false;
    _color = Colors.deepPurple;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        color: _color,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: <Widget>[
            Logo(),
            complete
                ? Success(
                    resetFunc: () {
                      setState(() {
                        zerar();
                      });
                    },
                    result: result,
                  )
                : SubmitForm(
                    busy: busy,
                    alcCtrl: alcoolController,
                    gasCtrl: gasolinaController,
                    submitFuncion: () {
                      setState(() {
                        calcular();
                      });
                    }),
          ],
        ),
      ),
    );
  }
}
