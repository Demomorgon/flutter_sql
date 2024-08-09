// // ignore_for_file: avoid_function_literals_in_foreach_calls, non_constant_identifier_names

// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_geocera.dart';
// import 'package:trackingbol/sql/clases/bd_geocerca.dart';

// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';

// class SQLGeocerca {
//   static Database db = DataBaseSql.db;
//   final c_geocerca = CabeceraGeocerca();

//   Future<void> insertarGeocerca(List<dynamic> list) async =>
//       list.forEach((x) async => await db.insert(
//           c_geocerca.tablaGeocerca, BDGeocerca.fromMap(x).toMap()));

//   Future<List<BDGeocerca>> consultarGeocerca() async => await db
//       .query(c_geocerca.tablaGeocerca)
//       .then((list) => list.map((e) => BDGeocerca.fromMap(e)).toList());

//   Future<List<BDGeocerca>> consultarGeocercaIdGrupo(int id_dispositivo) async =>
//       await db.query(c_geocerca.tablaGeocerca,
//           where: '${c_geocerca.id_dispositivo} = ?',
//           orderBy: c_geocerca.detalle,
//           whereArgs: [
//             id_dispositivo
//           ]).then((list) => list.map((e) => BDGeocerca.fromMap(e)).toList());

//   Future<void> eliminarTodo() async =>
//       await db.delete(c_geocerca.tablaGeocerca);

//   Future<void> eliminarIdGrupo(int id_geocerca) async =>
//       await db.delete(c_geocerca.tablaGeocerca,
//           where: '${c_geocerca.id_geocercas} = ?', whereArgs: [id_geocerca]);

//   Future<void> modificarGeocerca(BDGeocerca geocerca) async =>
//       await db.update(c_geocerca.tablaGeocerca, geocerca.toMap(),
//           where: '${c_geocerca.id_geocercas} = ?',
//           whereArgs: [geocerca.id_geocercas]);
//   Future<void> nuevaGeocerca(BDGeocerca geocerca) async =>
//       await db.insert(c_geocerca.tablaGeocerca, geocerca.toMap());

//   Future<void> eliminarPorIdDispositivo(int id_dispositivo) async {
//     await db.delete(c_geocerca.tablaGeocerca,
//         where: '${c_geocerca.id_dispositivo} = ?', whereArgs: [id_dispositivo]);
//   }

//   Future<List<BDGeocerca>> listaGeocercaSinRepetidos(
//           int id_dispositivo) async =>
//       await db.rawQuery('''
//     SELECT DISTINCT ${c_geocerca.detalle}, ${c_geocerca.referencias} 
//     FROM ${c_geocerca.tablaGeocerca} 
//     WHERE ${c_geocerca.id_dispositivo} != $id_dispositivo
//     ''').then((list) => list.map((e) => BDGeocerca.fromMapClon(e)).toList());
// }
