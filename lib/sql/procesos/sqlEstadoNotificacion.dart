// // ignore_for_file: file_names, non_constant_identifier_names

// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_estadoNotificacion.dart';
// import 'package:trackingbol/sql/clases/bd_estadoNotificacion.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';

// class SQLEstadoNotificacion {
//   static Database db = DataBaseSql.db;
//   static CabeceraEstadoNotificacion c_estadoNotificacion =
//       CabeceraEstadoNotificacion();

//   Future<void> insertarEstadoNotificacion(
//           BDEstadoNotificacion estadoNotificacion) async =>
//       await db.insert(c_estadoNotificacion.tablaEstadoNotificacion,
//           estadoNotificacion.toMap());

//   Future<List<BDEstadoNotificacion>> consultarEstadoNotificacion() async =>
//       await db.query(c_estadoNotificacion.tablaEstadoNotificacion).then(
//           (listEstado) =>
//               listEstado.map((e) => BDEstadoNotificacion.fromMap(e)).toList());

//   Future<List<BDEstadoNotificacion>> consultarEstadoNotificacionID(
//           int id_dispositivo) async =>
//       await db.query(c_estadoNotificacion.tablaEstadoNotificacion,
//           where: '${c_estadoNotificacion.id_dispositivo} = ?',
//           whereArgs: [
//             id_dispositivo
//           ]).then((listEstado) =>
//           listEstado.map((e) => BDEstadoNotificacion.fromMap(e)).toList());

//   Future<void> actualizarEstadoNotificacion(
//           BDEstadoNotificacion estadoNotificacion) async =>
//       await db.update(c_estadoNotificacion.tablaEstadoNotificacion,
//           estadoNotificacion.toMap(),
//           where: '${c_estadoNotificacion.id_dispositivo} = ?',
//           whereArgs: [estadoNotificacion.id_dispositivo]);

//   Future<void> eliminarEstadoNotificacion() async =>
//       await db.delete(c_estadoNotificacion.tablaEstadoNotificacion);

//   Future<List<BDEstadoNotificacion>> consultarEstadoNotificacionTipo(
//           String tipo) async =>
//       await db.query(c_estadoNotificacion.tablaEstadoNotificacion,
//           where: '${c_estadoNotificacion.tipo} = ?',
//           whereArgs: [
//             tipo
//           ]).then((listEstado) =>
//           listEstado.map((e) => BDEstadoNotificacion.fromMap(e)).toList());

//   Future<void> eliminarVehiculoTopico(BDEstadoNotificacion en) async =>
//       await db.delete(c_estadoNotificacion.tablaEstadoNotificacion,
//           where: '${c_estadoNotificacion.topico} = ?',
//           whereArgs: [
//             en.topico
//           ]).then((value) => print('//////////////nro eliminado $value'));

//   Future<
//       List<BDEstadoNotificacion>> consultaEstadoNotificaionIdDispositivoGeocerca(
//           int id_dispositivo) async =>
//       await db.query(c_estadoNotificacion.tablaEstadoNotificacion,
//           where:
//               '${c_estadoNotificacion.id_dispositivo} = ? AND ${c_estadoNotificacion.tipo} LIKE "GEOCERCA"',
//           whereArgs: [
//             id_dispositivo
//           ]).then(
//           (list) => list.map((e) => BDEstadoNotificacion.fromMap(e)).toList());

//   Future<List<BDEstadoNotificacion>> obtenerLimiteVelocidadIdDispositivo(
//           int id_dispositivo) async =>
//       await db.query(c_estadoNotificacion.tablaEstadoNotificacion,
//           where:
//               '${c_estadoNotificacion.id_dispositivo} = ? AND ${c_estadoNotificacion.tipo} LIKE "VELOCIDAD"',
//           whereArgs: [
//             id_dispositivo
//           ]).then(
//           (list) => list.map((e) => BDEstadoNotificacion.fromMap(e)).toList());

//   Future<void> eliminarLimiteVelocidad(int id_dispositivo) async =>
//       await db.delete(c_estadoNotificacion.tablaEstadoNotificacion,
//           where:
//               '${c_estadoNotificacion.id_dispositivo} = ? AND ${c_estadoNotificacion.tipo} LIKE "VELOCIDAD"',
//           whereArgs: [id_dispositivo]);

//   Future<List<BDEstadoNotificacion>> obtenerLimiteHorario(
//           int id_dispositivo) async =>
//       await db.query(c_estadoNotificacion.tablaEstadoNotificacion,
//           where:
//               '${c_estadoNotificacion.id_dispositivo} = ? AND ${c_estadoNotificacion.tipo} LIKE "RESTRICHORARIO"',
//           whereArgs: [
//             id_dispositivo
//           ]).then(
//           (list) => list.map((e) => BDEstadoNotificacion.fromMap(e)).toList());

//   Future<void> eliminarRestriccionHorario(int id_dispositivo) async =>
//       await db.delete(c_estadoNotificacion.tablaEstadoNotificacion,
//           where:
//               '${c_estadoNotificacion.id_dispositivo} = ? AND ${c_estadoNotificacion.tipo} LIKE "RESTRICHORARIO"',
//           whereArgs: [id_dispositivo]);

//   Future<List<BDEstadoNotificacion>> consultarAlertaIdDispositivo(
//           int id_dispositivo) async =>
//       await db.query(c_estadoNotificacion.tablaEstadoNotificacion,
//           where:
//               '${c_estadoNotificacion.id_dispositivo} = ? AND ${c_estadoNotificacion.tipo} LIKE "ALERTA"',
//           whereArgs: [
//             id_dispositivo
//           ]).then(
//           (list) => list.map((e) => BDEstadoNotificacion.fromMap(e)).toList());
// }
