import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'calculadora-state.g.dart';

class CalculadoraState extends _CalculadoraState with _$CalculadoraState {
  CalculadoraState();
}

abstract class _CalculadoraState with Store {
  Parser p = Parser();
  ContextModel cm = ContextModel();

  @observable
  String entrada = "";

  @observable
  String calculo = "";

  @action
  void limpar() {
    this.entrada = "";
    this.calculo = "";
  }

  @action
  void deletar() {
    this.entrada = this.entrada.substring(0, this.entrada.length - 1);
  }

  @action
  void adicionar(String numero) {
    this.entrada += numero;
  }

  @action
  void calcular() {
    Expression exp = p.parse(this.entrada);
    exp.evaluate(EvaluationType.REAL, cm);
    this.calculo = exp.evaluate(EvaluationType.REAL, cm).toString();
  }
}
