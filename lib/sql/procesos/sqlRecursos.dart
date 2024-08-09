// // ignore_for_file: prefer_final_fields, file_names, avoid_function_literals_in_foreach_calls, non_constant_identifier_names

// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_recurso.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';

// import '../clases/bd_recurso.dart';
// // import '../sql.dart';

// class SQLRecursos {
//   Database db = DataBaseSql.db;
//   CabeceraRecurso c_recursos = CabeceraRecurso();

//   Future<void> insertarRecurso(List<dynamic> recurso) async =>
//       recurso.forEach((e) async => await db.insert(
//           c_recursos.tablaRecurso, BDRecurso.fromMap(e).toMap()));

//   Future<List<BDRecurso>> consultaRecurso() async =>
//       await db.query(c_recursos.tablaRecurso).then((listRecursos) =>
//           listRecursos.map((e) => BDRecurso.fromMap(e)).toList());

//   Future<List<BDRecurso>> consultaRecursoIdRol(int id_rol) async =>
//       await db.query(c_recursos.tablaRecurso,
//           where: '${c_recursos.id_rol} = ?',
//           whereArgs: [
//             id_rol
//           ]).then((listRecurso) =>
//           listRecurso.map((e) => BDRecurso.fromMap(e)).toList());

//   Future<void> eliminarRecurso() async =>
//       await db.delete(c_recursos.tablaRecurso);

//   Future<void> eliminarRecursoHijos(int id_rol) async =>
//       await db.delete(c_recursos.tablaRecurso,
//           where: '${c_recursos.id_rol} != ?', whereArgs: [id_rol]);

//   Future<void> eliminarRecursoID(BDRecurso bdRecurso) async =>
//       await db.delete(c_recursos.tablaRecurso,
//           where: '${c_recursos.id_recurso} = ?',
//           whereArgs: [bdRecurso.id_recurso]);

//   Future<void> actualizarRecursoID(BDRecurso bdRecurso) async =>
//       await db.update(c_recursos.tablaRecurso, bdRecurso.toMap(),
//           where: '${c_recursos.id_recurso} = ?',
//           whereArgs: [bdRecurso.id_recurso]);

//   Future<void> insertarBDRecurso(BDRecurso bdRecurso) async =>
//       db.insert(c_recursos.tablaRecurso, bdRecurso.toMap());
// }
