// // ignore_for_file: file_names, non_constant_identifier_names, unused_field, prefer_final_fields

// // import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_notificacion.dart';
// // import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';
// import 'package:trackingbol/sql/sql.dart';
// import 'package:trackingbol/ux/objetos/receptor/re_historialNotificacion.dart';

// class SQLHistorialNotificaciones {
//   CabeceraNotificacion c_notificacion = CabeceraNotificacion();
//   // static Database db = DataBaseSql.db;
//   DatabaseTrackingBol _db = DatabaseTrackingBol();

//   Future<void> insertarNotificacion(HistorialNotificacion notificacion) async =>
//       await _db.initializeDB().then((db) async => await db.insert(
//           c_notificacion.tablaNotificacion, notificacion.toMapSQL()));

//   Future<List<HistorialNotificacion>> consultaNotificacion(
//           int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .query(c_notificacion.tablaNotificacion,
//               where:
//                   '${c_notificacion.respuesta} = "V" AND ${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1')
//           .then((listN) =>
//               listN.map((e) => HistorialNotificacion.fromMapSQL(e)).toList()));

//   Future<List<HistorialNotificacion>> consultaNotificacionSeguridad(
//           int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery('''SELECT * FROM ${c_notificacion.tablaNotificacion} 
//               WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 
//               AND (${c_notificacion.ruta} LIKE "ALERTA" OR ${c_notificacion.ruta} LIKE "ALERTAVEHICULO")) 
//               ORDER BY ${c_notificacion.fecha_hora} DESC''').then((value) => value.map((e) => HistorialNotificacion.fromMapSQL(e)).toList()));
//   Future<List<HistorialNotificacion>> consultaNotificacionConducction(
//           int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery('''SELECT * FROM ${c_notificacion.tablaNotificacion} 
//           WHERE ${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 
//           AND (${c_notificacion.ruta} LIKE "%VELOCIDAD%" 
//                 OR ${c_notificacion.ruta} LIKE "%GEOCERCA%" 
//                 OR ${c_notificacion.ruta} LIKE "%HORARIO%") 
//                 ORDER BY ${c_notificacion.fecha_hora} DESC''').then((value) => value.map((e) => HistorialNotificacion.fromMapSQL(e)).toList()));

//   Future<int> consultaNotificacionSeguridadVistos(int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery('''SELECT * FROM ${c_notificacion.tablaNotificacion} 
//               WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 
//               AND ${c_notificacion.respuesta} = "V" 
//               AND (${c_notificacion.ruta} LIKE "ALERTA" OR ${c_notificacion.ruta} LIKE "ALERTAVEHICULO")
//               AND (${c_notificacion.puerta_abierta} = 1 OR ${c_notificacion.motor_encendido} = 1))''').then((value) => value.length));

//   Future<int> consultaNotificacionConducion(int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery('''SELECT * FROM ${c_notificacion.tablaNotificacion} 
//           WHERE ${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 
//           AND ( ${c_notificacion.respuesta} LIKE "%V%" 
//           AND (${c_notificacion.ruta} LIKE "%VELOCIDAD%" 
//                 OR ${c_notificacion.ruta} LIKE "%GEOCERCA%" 
//                 OR ${c_notificacion.ruta} LIKE "%RESTRICHORARIO%")) 
//                 ORDER BY ${c_notificacion.fecha_hora} DESC''').then(
//               (value) => value.length));

//   Future<List<HistorialNotificacion>> consultaNotificacionID(String id) async =>
//       await _db.initializeDB().then((db) async => await db.query(
//               c_notificacion.tablaNotificacion,
//               where: "${c_notificacion.id} = ?",
//               whereArgs: [
//                 id
//               ]).then((value) =>
//               value.map((e) => HistorialNotificacion.fromMapSQL(e)).toList()));

//   Future<void> eliminarNotificacion() async => await _db
//       .initializeDB()
//       .then((db) async => await db.delete(c_notificacion.tablaNotificacion));

//   Future<void> leerNotificacion(HistorialNotificacion h) async =>
//       await _db.initializeDB().then((db) async => await db.update(
//           c_notificacion.tablaNotificacion, h.toMapSQL(),
//           where: '${c_notificacion.id} = ?', whereArgs: [h.id]));

//   Future<List<HistorialNotificacion>> consultaHistorialNotificacionTotal(
//           int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery(
//               'SELECT * FROM ${c_notificacion.tablaNotificacion} WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1) ORDER BY ${c_notificacion.fecha_hora} DESC')
//           .then((value) =>
//               value.map((e) => HistorialNotificacion.fromMapSQL(e)).toList()));

//   Future<int> consultarAlarmasSensor(int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery(
//               'SELECT * FROM ${c_notificacion.tablaNotificacion} WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 AND ${c_notificacion.ruta} like "ALERTA2" AND ${c_notificacion.respuesta} LIKE "V") ORDER BY ${c_notificacion.fecha_hora} DESC')
//           .then((value) => value.length));

//   Future<int> consultarNotificacionGaleria(int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery(
//               'SELECT * FROM ${c_notificacion.tablaNotificacion} WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 AND ${c_notificacion.ruta} like "GALERIA" AND ${c_notificacion.respuesta} LIKE "V") ORDER BY ${c_notificacion.fecha_hora} DESC')
//           .then((value) => value.length));

//   // Future<List<HistorialNotificacion>> consultarAlarmasConduccionObjeto(
//   //         int d0, int d1) async =>
//   //     await _db.initializeDB().then((db) async => await db
//   //         .rawQuery(
//   //             'SELECT * FROM ${c_notificacion.tablaNotificacion} WHERE ${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 AND (${c_notificacion.ruta} LIKE "VELOCIDAD" OR ${c_notificacion.ruta} LIKE "GEOCERCA" OR ${c_notificacion.ruta} LIKE "RESTRICHORARIO") ORDER BY ${c_notificacion.fecha_hora} DESC')
//   //         .then((value) =>
//   //             value.map((e) => HistorialNotificacion.fromMapSQL(e)).toList()));

//   Future<List<HistorialNotificacion>> consultaTodo() async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery(
//               'SELECT * FROM ${c_notificacion.tablaNotificacion} ORDER BY ${c_notificacion.fecha_hora} DESC')
//           .then((value) =>
//               value.map((e) => HistorialNotificacion.fromMapSQL(e)).toList()));
// }
