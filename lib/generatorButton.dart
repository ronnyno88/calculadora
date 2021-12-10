import 'package:calculadora/global.dart';

import 'button.dart';

var calculadoraGrid = [
  Button.orange(
    label: "AC",
    onTap: () => calculadora.limpar(),
  ),
  Button.red(label: "DEL", onTap: () => calculadora.deletar()),
  Button.blue(label: "%", onTap: () => calculadora.adicionar('%')),
  Button.blue(label: "÷", onTap: () => calculadora.adicionar('/')),
  Button.purple(label: "7", onTap: () => calculadora.adicionar('7')),
  Button.purple(label: "8", onTap: () => calculadora.adicionar('8')),
  Button.purple(label: "9", onTap: () => calculadora.adicionar('9')),
  Button.blue(label: "x", onTap: () => calculadora.adicionar('*')),
  Button.purple(label: "4", onTap: () => calculadora.adicionar('4')),
  Button.purple(label: "5", onTap: () => calculadora.adicionar('5')),
  Button.purple(label: "6", onTap: () => calculadora.adicionar('6')),
  Button.blue(label: "-", onTap: () => calculadora.adicionar('-')),
  Button.purple(label: "3", onTap: () => calculadora.adicionar('3')),
  Button.purple(label: "2", onTap: () => calculadora.adicionar('2')),
  Button.purple(label: "1", onTap: () => calculadora.adicionar('1')),
  Button.blue(label: "+", onTap: () => calculadora.adicionar('+')),
  Button.purple(
    label: "+/-",
    onTap: () {},
  ),
  Button.purple(label: "0", onTap: () => calculadora.adicionar('0')),
  Button.purple(label: ".", onTap: () => calculadora.adicionar('.')),
  Button.blue(label: "=", onTap: () => calculadora.calcular()),
];
