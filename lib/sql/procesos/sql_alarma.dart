// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_alarma.dart';
// import 'package:trackingbol/sql/clases/bd_alarma.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';
// import 'package:trackingbol/sql/sql.dart';

// class SQLAlarma {
//   DatabaseTrackingBol _db = DatabaseTrackingBol();
//   CabeceraAlarma c_alarma = CabeceraAlarma();

//   Future<void> incertarAlarma(BDAlarma alarma) async =>
//       await _db.initializeDB().then(
//           (db) async => await db.insert(c_alarma.tablaAlarma, alarma.toMap()));
//   Future<List<BDAlarma>> consultAlarma() async =>
//       await _db.initializeDB().then((db) async => await db
//           .query(c_alarma.tablaAlarma,
//               orderBy: '${c_alarma.time} DESC', limit: 1)
//           .then((listAlarma) =>
//               listAlarma.map((e) => BDAlarma.fromMap(e)).toList()));
//   Future<void> eliminar() async => await _db
//       .initializeDB()
//       .then((db) async => await db.delete(c_alarma.tablaAlarma));
// }
