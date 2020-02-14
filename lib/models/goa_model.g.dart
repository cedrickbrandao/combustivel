// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goa_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GoaModel on _GoaModelBase, Store {
  final _$gasolinaControllerAtom =
      Atom(name: '_GoaModelBase.gasolinaController');

  @override
  MoneyMaskedTextController get gasolinaController {
    _$gasolinaControllerAtom.context
        .enforceReadPolicy(_$gasolinaControllerAtom);
    _$gasolinaControllerAtom.reportObserved();
    return super.gasolinaController;
  }

  @override
  set gasolinaController(MoneyMaskedTextController value) {
    _$gasolinaControllerAtom.context.conditionallyRunInAction(() {
      super.gasolinaController = value;
      _$gasolinaControllerAtom.reportChanged();
    }, _$gasolinaControllerAtom, name: '${_$gasolinaControllerAtom.name}_set');
  }

  final _$alcoolControllerAtom = Atom(name: '_GoaModelBase.alcoolController');

  @override
  MoneyMaskedTextController get alcoolController {
    _$alcoolControllerAtom.context.enforceReadPolicy(_$alcoolControllerAtom);
    _$alcoolControllerAtom.reportObserved();
    return super.alcoolController;
  }

  @override
  set alcoolController(MoneyMaskedTextController value) {
    _$alcoolControllerAtom.context.conditionallyRunInAction(() {
      super.alcoolController = value;
      _$alcoolControllerAtom.reportChanged();
    }, _$alcoolControllerAtom, name: '${_$alcoolControllerAtom.name}_set');
  }

  final _$resultAtom = Atom(name: '_GoaModelBase.result');

  @override
  String get result {
    _$resultAtom.context.enforceReadPolicy(_$resultAtom);
    _$resultAtom.reportObserved();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.context.conditionallyRunInAction(() {
      super.result = value;
      _$resultAtom.reportChanged();
    }, _$resultAtom, name: '${_$resultAtom.name}_set');
  }

  final _$busyAtom = Atom(name: '_GoaModelBase.busy');

  @override
  bool get busy {
    _$busyAtom.context.enforceReadPolicy(_$busyAtom);
    _$busyAtom.reportObserved();
    return super.busy;
  }

  @override
  set busy(bool value) {
    _$busyAtom.context.conditionallyRunInAction(() {
      super.busy = value;
      _$busyAtom.reportChanged();
    }, _$busyAtom, name: '${_$busyAtom.name}_set');
  }

  final _$completeAtom = Atom(name: '_GoaModelBase.complete');

  @override
  bool get complete {
    _$completeAtom.context.enforceReadPolicy(_$completeAtom);
    _$completeAtom.reportObserved();
    return super.complete;
  }

  @override
  set complete(bool value) {
    _$completeAtom.context.conditionallyRunInAction(() {
      super.complete = value;
      _$completeAtom.reportChanged();
    }, _$completeAtom, name: '${_$completeAtom.name}_set');
  }

  final _$colorAtom = Atom(name: '_GoaModelBase.color');

  @override
  MaterialColor get color {
    _$colorAtom.context.enforceReadPolicy(_$colorAtom);
    _$colorAtom.reportObserved();
    return super.color;
  }

  @override
  set color(MaterialColor value) {
    _$colorAtom.context.conditionallyRunInAction(() {
      super.color = value;
      _$colorAtom.reportChanged();
    }, _$colorAtom, name: '${_$colorAtom.name}_set');
  }

  final _$_GoaModelBaseActionController =
      ActionController(name: '_GoaModelBase');

  @override
  Future<dynamic> calcular() {
    final _$actionInfo = _$_GoaModelBaseActionController.startAction();
    try {
      return super.calcular();
    } finally {
      _$_GoaModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic zerar() {
    final _$actionInfo = _$_GoaModelBaseActionController.startAction();
    try {
      return super.zerar();
    } finally {
      _$_GoaModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'gasolinaController: ${gasolinaController.toString()},alcoolController: ${alcoolController.toString()},result: ${result.toString()},busy: ${busy.toString()},complete: ${complete.toString()},color: ${color.toString()}';
    return '{$string}';
  }
}
