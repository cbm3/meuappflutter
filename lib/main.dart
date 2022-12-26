import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'classes/Pessoa.dart';

void main(List<String> arguments) {
  var p1 = new Pessoa();
  print("CALCULADORA DE IMC");
  print("Informe o nome da pessoa:");
  var nome = stdin.readLineSync(encoding: utf8);
  p1.setNome(nome!);

  print("Informe o peso da pessoa:");
  var line_p = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line_p ?? "0");
  p1.setPeso(peso);

  print("Informe a altura da pessoa:");
  var line_a = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line_a ?? "0");
  p1.setAltura(altura);

  var altura2 = (p1.getAltura() * p1.getAltura());

  var imc = (p1.getPeso() / altura2);

  if (imc < 16) {
    print("Magreza grave");
  }
  if (imc == 16 || imc < 17) {
    print("Magreza moderada");
  }
  if (imc == 17 || imc < 18.5) {
    print("Magreza leve");
  }
  if (imc == 18.5 || imc < 25) {
    print("Saudável");
  }
  if (imc == 25 || imc < 30) {
    print("Sobrepeso");
  }
  if (imc == 30 || imc < 35) {
    print("Obesidade grau 1");
  }
  if (imc == 35 || imc < 40) {
    print("Obesidade grau 2 (severa)");
  }
  if (imc >= 40) {
    print("Obesidade grau III (móbida)");
  }

  print(p1.getAltura() * p1.getPeso());
}
