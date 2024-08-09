// // ignore_for_file: non_constant_identifier_names

// // import 'package:sqflite/sqlite_api.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_historialRuta.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';
// import 'package:trackingbol/ux/objetos/receptor/re_tiempoReal.dart';
// // import 'package:trackingbol/sqlWeb/initSqlWeb/initSqlWeb.dart';

// class SQLHistorial {
//   static Database db = DataBaseSql.db;
//   CabeceraHistorialRuta c_historialRuta = CabeceraHistorialRuta();

//   Future<void> insertarHistorialRuta(List<dynamic> historial) async =>
//       //  await _db
//       //     .initializeDB()
//       //     .then((db) =>
//       historial.forEach((e) async => await db.insert(
//           c_historialRuta.tablaHistorialRuta,
//           TiempoReal.fromMap(e).toMapSQL()));
//   // asdf{
//   //   int result = 0;
//   //   try {
//   //     final Database db = await initializeDB();
//   //     historial.forEach((element) async {
//   //       var tiemporeal = TiempoReal.fromMap(element);
//   //       if (tiemporeal.valido)
//   //         result = await db.insert(
//   //             c_historialRuta.tablaHistorialRuta, tiemporeal.toMapSQL());
//   //     });
//   //   } catch (e) {}
//   //   return result;
//   // }

//   Future<List<TiempoReal>> consultaHistorialRuta(
//           int d0, int d1, String id_dispositivo) async =>
//       // await _db.initializeDB().then((db) async =>
//       await db.rawQuery('''SELECT * FROM ${c_historialRuta.tablaHistorialRuta} 
//               WHERE ((${c_historialRuta.fecha_hora} BETWEEN $d0 AND $d1) AND ${c_historialRuta.id_dispositivo} = $id_dispositivo) 
//               ORDER BY ${c_historialRuta.fecha_hora} ASC''').then((listHis) => listHis.map((e) => TiempoReal.fromMapSQL(e)).toList());
//   //   final List<Map<String, Object?>> queryResult = await db.rawQuery(
//   //       'SELECT * FROM ${c_historialRuta.tablaHistorialRuta} WHERE ((${c_historialRuta.fecha_hora} BETWEEN $d0 AND $d1) AND ${c_historialRuta.id_dispositivo} = $id_dispositivo) ORDER BY ${c_historialRuta.fecha_hora} ASC');
//   //   return queryResult.map((e) => TiempoReal.fromMapSQL(e)).toList();
//   // }

//   Future<List<TiempoReal>> consultaHistorialRutaTodo() async =>
//       // await _db.initializeDB().then((db) async =>
//       await db.rawQuery('''SELECT * FROM ${c_historialRuta.tablaHistorialRuta} 
//           ORDER BY ${c_historialRuta.fecha_hora} ASC''').then((listHis) => listHis.map((e) => TiempoReal.fromMapSQL(e)).toList());
//   //   final Database db = await initializeDB();
//   //   final List<Map<String, Object?>> queryResult = await db.rawQuery(
//   //       'SELECT * FROM ${c_historialRuta.tablaHistorialRuta} ORDER BY ${c_historialRuta.fecha_hora} ASC');
//   //   return queryResult.map((e) => TiempoReal.fromMapSQL(e)).toList();
//   // }

//   Future<void> eliminarHistorialRuta() async =>
//       // await _db
//       //     .initializeDB()
//       //     .then((db) async =>
//       await db.delete(c_historialRuta.tablaHistorialRuta);
//   //   final Database db = await initializeDB();
//   //   await db.delete(c_historialRuta.tablaHistorialRuta);
//   // }

// }
