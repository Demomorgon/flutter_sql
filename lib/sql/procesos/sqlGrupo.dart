// // ignore_for_file: avoid_function_literals_in_foreach_calls, non_constant_identifier_names, file_names

// import 'package:sqflite/sqlite_api.dart';
// import 'package:trackingbol/sql/cabeceras/ca_grupo.dart';
// import 'package:trackingbol/sql/cabeceras/ca_vehiculo.dart';
// import 'package:trackingbol/sql/clases/bd_grupo.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';
// // import 'package:trackingbol/sqlWeb/initSqlWeb/initSqlWeb.dart';

// class SQLGrupo {
//   static Database db = DataBaseSql.db;
//   static CabeceraGrupo c_grupo = CabeceraGrupo();
//   static CabeceraVehiculo c_vehiculo = CabeceraVehiculo();

//   Future<void> insertarGrupos(List<dynamic> grupos) async =>
//       grupos.forEach((e) async =>
//           await db.insert(c_grupo.tablaGrupo, BDGrupo.fromMap(e).toMap()));

//   Future<void> insertarGrupo(BDGrupo newGrupo) async =>
//       await db.insert(c_grupo.tablaGrupo, newGrupo.toMap());

//   Future<List<BDGrupo>> consultaGrupos() async => await db
//       .query(c_grupo.tablaGrupo)
//       .then((listGrupo) => listGrupo.map((e) => BDGrupo.fromMap(e)).toList());

//   Future<List<BDGrupo>> consultaGrupoId(int id_grupo) async =>
//       await db.query(c_grupo.tablaGrupo,
//           where: '${c_grupo.id_grupo} = ?',
//           whereArgs: [
//             id_grupo
//           ]).then(
//           (listGrupo) => listGrupo.map((e) => BDGrupo.fromMap(e)).toList());

//   Future<List<BDGrupo>> consultaGruposClasificacion(
//           String clasificacion) async =>
//       await db.query(c_grupo.tablaGrupo,
//           where: '${c_grupo.clasificacion} =?',
//           whereArgs: [
//             clasificacion
//           ]).then(
//           (listGrupo) => listGrupo.map((e) => BDGrupo.fromMap(e)).toList());

//   Future<void> eliminarGrupos() async => await db.delete(c_grupo.tablaGrupo);

//   // Future<void> eliminarGrupoID(BDGrupo bdGrupo) async =>
//   //     await db.delete(c_vehiculo.tablaVehiculo,
//   //         where: '${c_grupo.id_grupo} = ?', whereArgs: [bdGrupo.id_grupo]);

//   Future<void> actualizarGrupoID(BDGrupo bdGrupo) async =>
//       await db.update(c_grupo.tablaGrupo, bdGrupo.toMap(),
//           where: '${c_grupo.id_grupo} = ?', whereArgs: [bdGrupo.id_grupo]);
// }
