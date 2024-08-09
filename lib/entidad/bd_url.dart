// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class BdUrl {
  int codigo;
  String respuesta;
  int id_persona;
  int id_parametro;
  String valor1;
  String valor2;
  String valor3;
  String descripcion;
  BdUrl({
    required this.codigo,
    required this.respuesta,
    required this.id_persona,
    required this.id_parametro,
    required this.valor1,
    required this.valor2,
    required this.valor3,
    required this.descripcion,
  });

  Map<String, dynamic> toMap() {
    return {
      'codigo': codigo,
      'respuesta': respuesta,
      'id_persona': id_persona,
      'id_parametro': id_parametro,
      'valor1': valor1,
      'valor2': valor2,
      'valor3': valor3,
      'descripcion': descripcion,
    };
  }

  factory BdUrl.fromMap(Map<String, dynamic> map) {
    return BdUrl(
      codigo: map['codigo'],
      respuesta: map['respuesta'] ?? '',
      id_persona: map['id_persona'],
      id_parametro: map['id_parametro'],
      valor1: map['valor1'] ?? '',
      valor2: map['valor2'] ?? '',
      valor3: map['valor3'] ?? '',
      descripcion: map['descripcion'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BdUrl.fromJson(String source) => BdUrl.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BdUrl(codigo: $codigo, respuesta: $respuesta, id_persona: $id_persona, id_parametro: $id_parametro, valor1: $valor1, valor2: $valor2, valor3: $valor3, descripcion: $descripcion)';
  }
}
