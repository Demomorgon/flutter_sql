// // ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_persona.dart';
// import 'package:trackingbol/sql/clases/bd_persona.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';

// class SQLPersona {
//   // DatabaseTrackingBol dbtb = DatabaseTrackingBol();
//   static Database db = DataBaseSql.db;

//   CabeceraPersona c_persona = CabeceraPersona();

//   Future<void> insertarPersona(List<dynamic> listp) async =>
//       listp.forEach((p) async => await db.insert(
//           c_persona.tablaPersona, BDPersona.fromMap(p).toMap()));

//   Future<void> eliminarPersona() async =>
//       await db.delete(c_persona.tablaPersona);

//   Future<void> eliminarHijos(int id_persona) async =>
//       db.delete(c_persona.tablaPersona,
//           where: '${c_persona.id_persona_padre} != ?', whereArgs: [id_persona]);

//   Future<List<BDPersona>> consultarPersona() async =>
//       await db.query(c_persona.tablaPersona).then((listP) async =>
//           listP.map((e) => BDPersona.fromMap(e)).toList());

//   Future<void> insertarPersonaHttp(BDPersona bdpersona) async =>
//       await db.insert(c_persona.tablaPersona, bdpersona.toMap());

//   Future<void> modificarPersona(BDPersona bdPersona) async =>
//       await db.update(c_persona.tablaPersona, bdPersona.toMap(),
//           where: '${c_persona.id_persona} = ?',
//           whereArgs: [bdPersona.id_persona]);
// }
