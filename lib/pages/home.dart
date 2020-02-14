import 'package:combustivel/models/goa_model.dart';
import 'package:combustivel/widgets/logo.widget.dart';
import 'package:combustivel/widgets/submit-form.dart';
import 'package:combustivel/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final goaModel = GoaModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Observer(
          builder: (_) => AnimatedContainer(
            color: goaModel.color,
            duration: Duration(milliseconds: 800),
            child: ListView(
              children: <Widget>[
                Logo(),
                goaModel.complete
                    ? Success(
                        resetFunc: goaModel.zerar,
                        result: goaModel.result,
                      )
                    : SubmitForm(
                        busy: goaModel.busy,
                        alcCtrl: goaModel.alcoolController,
                        gasCtrl: goaModel.gasolinaController,
                        submitFuncion: goaModel.calcular)
              ],
            ),
          ),
        ));
  }
}
