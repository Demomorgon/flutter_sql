// // ignore_for_file: non_constant_identifier_names, file_names

// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/clases/bd_persona.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';

// import '../cabeceras/ca_persona.dart';
// import '../cabeceras/ca_rol.dart';
// import '../clases/bd_rol.dart';
// // import '../sql.dart';

// class SQLRol {
//   // DatabaseTrackingBol dbtb = DatabaseTrackingBol();
//   Database db = DataBaseSql.db;
//   CabeceraRol c_rol = CabeceraRol();
//   CabeceraPersona c_persona = CabeceraPersona();

//   Future<void> insertarRol(BDRol rol) async =>
//   //  await dbtb
//   //     .initializeDB()
//   //     .then((db) async => 
//       await db.insert(c_rol.tablaRol, rol.toMap());

//   Future<List<BDRol>> consultarRolIdPersona(int id_persona) async =>
//       // dbtb.initializeDB().then((db) async => 
//       await db.query(c_rol.tablaRol,
//               where: '${c_rol.id_persona} = ?',
//               whereArgs: [
//                 id_persona
//               ]).then((listR) => listR.map((e) => BDRol.fromMap(e)).toList());

//   Future<List<BDPersona>> consultarRolCondigoRol(String codigo_rol) async =>
//       // dbtb.initializeDB().then((db) async => 
//       await db
//           .rawQuery(
//               'SELECT * FROM ${c_rol.tablaRol} R, ${c_persona.tablaPersona} P WHERE R.${c_rol.id_persona} = P.${c_persona.id_persona} AND R.${c_rol.codigo_rol} like "%$codigo_rol%"')
//           .then((listR) => listR.map((e) => BDPersona.fromMap(e)).toList());

//   Future<void> eliminarRol() async =>
//       // dbtb.initializeDB().then((db) async => 
//       await db.delete(c_rol.tablaRol);

//   Future<void> eliminarHijos(int id_persona) async =>
//       // dbtb.initializeDB().then((db) async => 
//       await db.delete(c_rol.tablaRol,
//           where: '${c_rol.id_persona} != ?', whereArgs: [id_persona]);

//   Future<List<BDRol>> consultarTodo() async =>
//       // await dbtb.initializeDB().then((db) async => 
//       await db
//           .query(c_rol.tablaRol)
//           .then((listRol) => listRol.map((e) => BDRol.fromMap(e)).toList());
// }
