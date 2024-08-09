// // ignore_for_file: avoid_function_literals_in_foreach_calls, non_constant_identifier_names, file_names

// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_datosAdicionales.dart';
// import 'package:trackingbol/sql/clases/bd_datosAdicionales.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';

// class SQLDatosAdicionales {
//   static Database db = DataBaseSql.db;
//   final CabeceraDatosAdicionales c_datosAdicionales =
//       CabeceraDatosAdicionales();

//   Future<void> insertarDatosAdicionales(List<dynamic> list) async =>
//       list.forEach((e) async => await db.insert(
//           c_datosAdicionales.tablaDatosAdicionales,
//           BDatosAdicionales.fromMap(e).toMap()));

//   //   try {
//   //     final db = await initializeDB();
//   //     list.forEach((x) async {
//   //       var da = BDatosAdicionales.fromMap(x);
//   //       await db.insert(c_datosAdicionales.tablaDatosAdicionales, da.toMap());
//   //     });
//   //   } catch (e) {}
//   // }

//   Future<List<BDatosAdicionales>> consultarDatosAdicionales() async =>
//       await db.query(c_datosAdicionales.tablaDatosAdicionales).then(
//           (listDA) => listDA.map((e) => BDatosAdicionales.fromMap(e)).toList());

//   //   final db = await initializeDB();
//   //   final List<Map<String, Object?>> queryResult =
//   //       await db.query(c_datosAdicionales.tablaDatosAdicionales);
//   //   return queryResult.map((e) => BDatosAdicionales.fromMap(e)).toList();
//   // }

//   Future<List<BDatosAdicionales>> consultarDatosAdicionalesOrdenes(
//           int id_dispositivo) async =>
//       await db
//           .query(c_datosAdicionales.tablaDatosAdicionales,
//               where:
//                   "${c_datosAdicionales.id_dispositivo}= $id_dispositivo AND ${c_datosAdicionales.unidad} = 'true/false' AND ${c_datosAdicionales.descripcion} != 'OMA'")
//           .then((listDA) =>
//               listDA.map((e) => BDatosAdicionales.fromMap(e)).toList());

//   Future<List<BDatosAdicionales>> consultarDatosAdicionalesID(
//           int id_dispositivo) async =>
//       await db.query(c_datosAdicionales.tablaDatosAdicionales,
//           where: "${c_datosAdicionales.id_dispositivo} = ?",
//           whereArgs: [
//             id_dispositivo
//           ]).then(
//           (listDA) => listDA.map((e) => BDatosAdicionales.fromMap(e)).toList());
//   // return queryResult;
//   // }

//   Future<List<BDatosAdicionales>> consultarDatosAdicionalesOrdenesOMA(
//           int id_dispositivo) async =>
//       await db.query(c_datosAdicionales.tablaDatosAdicionales,
//           where:
//               "${c_datosAdicionales.descripcion} = 'OMA' AND ${c_datosAdicionales.id_dispositivo} = ?",
//           whereArgs: [
//             id_dispositivo
//           ]).then(
//           (listDA) => listDA.map((e) => BDatosAdicionales.fromMap(e)).toList());
//   // return queryResult;
//   // }

//   Future<List<BDatosAdicionales>> consultarDatosAdicionalesAjustes(
//           int id_dispositivo) async =>
//       await db.query(c_datosAdicionales.tablaDatosAdicionales,
//           where:
//               "${c_datosAdicionales.unidad} != 'true/false' AND ${c_datosAdicionales.id_dispositivo} = ?",
//           whereArgs: [
//             id_dispositivo
//           ]).then(
//           (listDA) => listDA.map((e) => BDatosAdicionales.fromMap(e)).toList());
//   //   return queryResult.map((e) => BDatosAdicionales.fromMap(e)).toList();
//   // }

//   Future<void> eliminarDatosAdicionalesID(int id_dispositivo) async =>
//       await db.delete(c_datosAdicionales.tablaDatosAdicionales,
//           where: "${c_datosAdicionales.id_dispositivo} = ?",
//           whereArgs: [id_dispositivo]);

//   Future<void> eliminarDatosAdicionales() async =>
//       await db.delete(c_datosAdicionales.tablaDatosAdicionales);

//   Future<void> modificarDatosAdicionales(
//           BDatosAdicionales bDatosAdicionales) async =>
//       await db.update(
//           c_datosAdicionales.tablaDatosAdicionales, bDatosAdicionales.toMap(),
//           where: '${c_datosAdicionales.id_datos_adicionales} = ?',
//           whereArgs: [bDatosAdicionales.id_datos_adicionales]);

//   Future<void> eliminarDatosAdicionalesIdDispositivo(
//           int id_dispositivo) async =>
//       await db.delete(c_datosAdicionales.tablaDatosAdicionales,
//           where: '${c_datosAdicionales.id_dispositivo} = ?',
//           whereArgs: [id_dispositivo]);
// }
