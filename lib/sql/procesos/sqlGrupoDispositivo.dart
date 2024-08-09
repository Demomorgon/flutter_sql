// // import 'package:sqflite/sqlite_api.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_grupoDispositivo.dart';
// import 'package:trackingbol/sql/cabeceras/ca_vehiculo.dart';
// import 'package:trackingbol/sql/clases/bd_grupoDispositivo.dart';
// import 'package:trackingbol/sql/clases/bd_vehiculo.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';
// // import 'package:trackingbol/sqlWeb/initSqlWeb/initSqlWeb.dart';

// class SQLGrupoDispositivo {
//   static CabeceraGrupoDispositivo c_grupoDispositivo =
//       CabeceraGrupoDispositivo();
//   static Database db = DataBaseSql.db;
//   static CabeceraVehiculo c_vehiculo = CabeceraVehiculo();

//   Future<void> insertarGrupoDispositivo(List<dynamic> grupoD) async =>
//       grupoD.forEach((x) async => await db.insert(
//           c_grupoDispositivo.tablaGrupoDispositivo,
//           (BDGrupoDispositivo.fromMapHTTP(x)).toMap()));

//   Future<void> insertarGrupoDispositivoUnidad(
//           BDGrupoDispositivo grupoD) async =>
//       // await initializeDB().then((db) async =>
//       await db.insert(c_grupoDispositivo.tablaGrupoDispositivo, grupoD.toMap());

//   Future<List<BDGrupoDispositivo>> consultarGrupoDispositivo() async =>
//       // await initializeDB().then((db) async =>
//       await db.query(c_grupoDispositivo.tablaGrupoDispositivo).then(
//           (listGD) async =>
//               listGD.map((e) => BDGrupoDispositivo.fromMap(e)).toList());

//   Future<int> consultarGrupoDispositivoID(int id_grupo) async =>
//       // await initializeDB().then((db) =>
//       await db
//           .rawQuery(
//               "SELECT * FROM ${c_grupoDispositivo.tablaGrupoDispositivo} WHERE ${c_grupoDispositivo.id_grupo} = $id_grupo")
//           .then((listGD) => listGD.length);

//   Future<List<BdVehiculo>> consultarGrupoDispositivoIDVehiculos(
//           int id_grupo) async =>
//       // await initializeDB().then((db) async =>
//       await db.rawQuery(
//           '''SELECT * FROM ${c_grupoDispositivo.tablaGrupoDispositivo} GD, ${c_vehiculo.tablaVehiculo} V 
//               WHERE GD.${c_grupoDispositivo.id_dispositivo} = V.${c_vehiculo.id_dispositivo} AND GD.${c_grupoDispositivo.id_grupo} = ? 
//               ORDER BY ${c_vehiculo.placa} ASC''',
//           [
//             id_grupo
//           ]).then(
//           (listGD) => listGD.map((e) => BdVehiculo.fromMap(e)).toList());

//   Future<List<BdVehiculo>> consultarGrupoDispositivoIDNoVehiculos(
//           String where) async =>
//       // await initializeDB().then((db) =>
//       await db
//           .query(c_vehiculo.tablaVehiculo,
//               where: where.length > 0 ? where : null, orderBy: c_vehiculo.placa)
//           .then((listV) => listV.map((e) => BdVehiculo.fromMap(e)).toList());

//   Future<void> eliminarGrupoDispositivo() async =>
//       // await initializeDB()
//       //     .then((db) =>
//       await db.delete(c_grupoDispositivo.tablaGrupoDispositivo);

//   Future<void> eliminarGrupoDispositivoID(int id_grupo) async =>
//       // await initializeDB().then((db) =>
//       await db.delete(c_grupoDispositivo.tablaGrupoDispositivo,
//           where: '${c_grupoDispositivo.id_grupo} = ?', whereArgs: [id_grupo]);

//   Future<void> eliminarGrupoDispositivoIDVehivulo(
//           int id_grupo, int id_dispositivo) async =>
//       // await initializeDB().then((db) =>
//       await db.delete(c_grupoDispositivo.tablaGrupoDispositivo,
//           where:
//               '${c_grupoDispositivo.id_grupo} = ? AND ${c_grupoDispositivo.id_dispositivo} = ?',
//           whereArgs: [id_grupo, id_dispositivo]);
// }
