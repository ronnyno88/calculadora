// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculadora-state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculadoraState on _CalculadoraState, Store {
  final _$entradaAtom = Atom(name: '_CalculadoraState.entrada');

  @override
  String get entrada {
    _$entradaAtom.reportRead();
    return super.entrada;
  }

  @override
  set entrada(String value) {
    _$entradaAtom.reportWrite(value, super.entrada, () {
      super.entrada = value;
    });
  }

  final _$calculoAtom = Atom(name: '_CalculadoraState.calculo');

  @override
  String get calculo {
    _$calculoAtom.reportRead();
    return super.calculo;
  }

  @override
  set calculo(String value) {
    _$calculoAtom.reportWrite(value, super.calculo, () {
      super.calculo = value;
    });
  }

  final _$_CalculadoraStateActionController =
      ActionController(name: '_CalculadoraState');

  @override
  void limpar() {
    final _$actionInfo = _$_CalculadoraStateActionController.startAction(
        name: '_CalculadoraState.limpar');
    try {
      return super.limpar();
    } finally {
      _$_CalculadoraStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deletar() {
    final _$actionInfo = _$_CalculadoraStateActionController.startAction(
        name: '_CalculadoraState.deletar');
    try {
      return super.deletar();
    } finally {
      _$_CalculadoraStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void adicionar(String numero) {
    final _$actionInfo = _$_CalculadoraStateActionController.startAction(
        name: '_CalculadoraState.adicionar');
    try {
      return super.adicionar(numero);
    } finally {
      _$_CalculadoraStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calcular() {
    final _$actionInfo = _$_CalculadoraStateActionController.startAction(
        name: '_CalculadoraState.calcular');
    try {
      return super.calcular();
    } finally {
      _$_CalculadoraStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
entrada: ${entrada},
calculo: ${calculo}
    ''';
  }
}
