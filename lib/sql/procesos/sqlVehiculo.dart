// // ignore_for_file: non_constant_identifier_names, prefer_final_fields, avoid_function_literals_in_foreach_calls, file_names

// import 'package:sqflite/sqlite_api.dart';
// import 'package:trackingbol/sql/cabeceras/ca_vehiculo.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';

// import '../clases/bd_vehiculo.dart';

// class SQLVehiculo {
//   CabeceraVehiculo c_vehiculo = CabeceraVehiculo();
//   Database db = DataBaseSql.db;

//   Future<void> insertarVehiculos(List<dynamic> vehiculo) async =>
//       vehiculo.forEach((e) async => await db.insert(
//           c_vehiculo.tablaVehiculo, BdVehiculo.fromMap(e).toMap()));

//   Future<List<BdVehiculo>> consultaVehiculos() async =>
//       await db.query(c_vehiculo.tablaVehiculo, orderBy: c_vehiculo.placa).then(
//           (listVehiculo) =>
//               listVehiculo.map((e) => BdVehiculo.fromMap(e)).toList());

//   Future<List<BdVehiculo>> consultaVehiculosID(int id_dipositivo) async => await
//       db.query(c_vehiculo.tablaVehiculo,
//           where: '${c_vehiculo.id_dispositivo} = ?',
//           whereArgs: [
//             id_dipositivo
//           ]).then((list) => list.map((e) => BdVehiculo.fromMap(e)).toList());

//   Future<List<BdVehiculo>> consultaVehiculosCCID(String ccid) async =>
//       await db.query(c_vehiculo.tablaVehiculo,
//           where: '${c_vehiculo.ccid} = ?',
//           whereArgs: [
//             ccid
//           ]).then((list) => list.map((e) => BdVehiculo.fromMap(e)).toList());

//   Future<void> eliminarVehiculos() async =>
//       await db.delete(c_vehiculo.tablaVehiculo);

//   Future<void> eliminarVehiculoID(BdVehiculo bdVehiculo) async =>
//       await db.delete(c_vehiculo.tablaVehiculo,
//           where: '${c_vehiculo.id_dispositivo} = ?',
//           whereArgs: [bdVehiculo.id_dispositivo]);

//   Future<void> actualizarVehiculoID(BdVehiculo bdVehiculo) async =>
//       await db.update(c_vehiculo.tablaVehiculo, bdVehiculo.toMap(),
//           where: '${c_vehiculo.id_dispositivo} = ?',
//           whereArgs: [bdVehiculo.id_dispositivo]);
// }
