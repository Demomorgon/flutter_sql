// // ignore_for_file: file_names, non_constant_identifier_names, unused_field, prefer_final_fields

// import 'package:trackingbol/sql/cabeceras/ca_notificacionActiva.dart';
// import 'package:trackingbol/sql/sql.dart';
// import 'package:trackingbol/ux/objetos/receptor/re_notificacionesActivas.dart';

// class SQLNotificacionActiva {
//   CabeceraNotificacionActiva c_notificacion = CabeceraNotificacionActiva();
//   DatabaseTrackingBol _db = DatabaseTrackingBol();

//   Future<void> insertarNotificacion(NotificacionesActivas notificacion) async =>
//       await _db.initializeDB().then((db) async => await db.insert(
//           c_notificacion.tablaNotificacionActiva, notificacion.toMapSQL()));

//   Future<int> consultaNotificacion(
//           int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .query(c_notificacion.tablaNotificacionActiva,
//               where:
//                   '${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1')
//           .then((listN) =>
//               listN.length));

//   Future<List<NotificacionesActivas>> consultaNotificacionSeguridad(
//           int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery('''SELECT * FROM ${c_notificacion.tablaNotificacionActiva} 
//               WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 
//               AND (${c_notificacion.ruta} LIKE "ALERTA" OR ${c_notificacion.ruta} LIKE "ALERTAVEHICULO")) 
//               ORDER BY ${c_notificacion.fecha_hora} DESC''').then((value) => value.map((e) => NotificacionesActivas.fromMapSQL(e)).toList()));
//   Future<List<NotificacionesActivas>> consultaNotificacionConducction(
//           int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery('''SELECT * FROM ${c_notificacion.tablaNotificacionActiva} 
//           WHERE ${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 
//           AND (${c_notificacion.ruta} LIKE "%VELOCIDAD%" 
//                 OR ${c_notificacion.ruta} LIKE "%GEOCERCA%" 
//                 OR ${c_notificacion.ruta} LIKE "%RESTRICHORARIO%") 
//                 ORDER BY ${c_notificacion.fecha_hora} DESC''').then((value) => value.map((e) => NotificacionesActivas.fromMapSQL(e)).toList()));

//   Future<int> consultaNotificacionSeguridadVistos(int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery('''SELECT * FROM ${c_notificacion.tablaNotificacionActiva} 
//               WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 
//               AND (${c_notificacion.ruta} LIKE "ALERTA" OR ${c_notificacion.ruta} LIKE "ALERTAVEHICULO"))''').then((value) => value.length));

//   Future<int> consultaNotificacionConducion(int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery('''SELECT * FROM ${c_notificacion.tablaNotificacionActiva} 
//           WHERE ${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 
//           AND (${c_notificacion.ruta} LIKE "%VELOCIDAD%" 
//                 OR ${c_notificacion.ruta} LIKE "%GEOCERCA%" 
//                 OR ${c_notificacion.ruta} LIKE "%RESTRICHORARIO%") 
//                 ORDER BY ${c_notificacion.fecha_hora} DESC''').then(
//               (value) => value.length));

//   Future<List<NotificacionesActivas>> consultaNotificacionID(String id) async =>
//       await _db.initializeDB().then((db) async => await db.query(
//               c_notificacion.tablaNotificacionActiva,
//               where: "${c_notificacion.id} = ?",
//               whereArgs: [
//                 id
//               ]).then((value) =>
//               value.map((e) => NotificacionesActivas.fromMapSQL(e)).toList()));

//   Future<void> eliminarNotificacion() async => await _db
//       .initializeDB()
//       .then((db) async => await db.delete(c_notificacion.tablaNotificacionActiva));

//   Future<void> leerNotificacion(String id) async =>
//       await _db.initializeDB().then((db) async => await db.delete(
//           c_notificacion.tablaNotificacionActiva,
//           where: '${c_notificacion.id} = ?', whereArgs: [id]));

//   Future<List<NotificacionesActivas>> consultaNotificacionesActivasTotal(
//           int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery(
//               'SELECT * FROM ${c_notificacion.tablaNotificacionActiva} WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1) ORDER BY ${c_notificacion.fecha_hora} DESC')
//           .then((value) =>
//               value.map((e) => NotificacionesActivas.fromMapSQL(e)).toList()));

//   Future<int> consultarAlarmasSensor(int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery(
//               'SELECT * FROM ${c_notificacion.tablaNotificacionActiva} WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 AND ${c_notificacion.ruta} like "ALERTA2") ORDER BY ${c_notificacion.fecha_hora} DESC')
//           .then((value) => value.length));

//   Future<int> consultarNotificacionGaleria(int d0, int d1) async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery(
//               'SELECT * FROM ${c_notificacion.tablaNotificacionActiva} WHERE (${c_notificacion.fecha_hora} BETWEEN $d0 AND $d1 AND ${c_notificacion.ruta} like "GALERIA") ORDER BY ${c_notificacion.fecha_hora} DESC')
//           .then((value) => value.length));
          
//   Future<List<NotificacionesActivas>> consultaTodo() async =>
//       await _db.initializeDB().then((db) async => await db
//           .rawQuery(
//               'SELECT * FROM ${c_notificacion.tablaNotificacionActiva} ORDER BY ${c_notificacion.fecha_hora} DESC')
//           .then((value) =>
//               value.map((e) => NotificacionesActivas.fromMapSQL(e)).toList()));

//   Future<bool> existeNotificacion(String id) async=>await _db.initializeDB().then((db) async => await db
//           .query(c_notificacion.tablaNotificacionActiva,where: '${c_notificacion.id} = ?',whereArgs: [id])
//           .then((value) => value.isNotEmpty));
// }
