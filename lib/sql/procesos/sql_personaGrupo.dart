// // ignore_for_file: file_names, non_constant_identifier_names, avoid_function_literals_in_foreach_calls

// import 'package:sqflite/sqflite.dart';
// import 'package:trackingbol/sql/cabeceras/ca_grupo.dart';
// import 'package:trackingbol/sql/cabeceras/ca_persona.dart';
// import 'package:trackingbol/sql/cabeceras/ca_personaGrupo.dart';
// import 'package:trackingbol/sql/clases/bd_grupo.dart';
// import 'package:trackingbol/sql/clases/bd_persona.dart';
// import 'package:trackingbol/sql/clases/bd_personaGrupo.dart';
// import 'package:trackingbol/sql/initSqlMobile/initSqlMobile.dart';

// class SQLPersonaGrupo {
//   // DatabaseTrackingBol _db = DatabaseTrackingBol();
//   static Database db = DataBaseSql.db;

//   CabeceraPersonaGrupo c_personaGrupo = CabeceraPersonaGrupo();
//   CabeceraGrupo c_grupo = CabeceraGrupo();
//   CabeceraPersona c_persona = CabeceraPersona();

//   Future<void> insertarPersonaGrupo(List<dynamic> listPersonaGrupo) async {
//     var listpg = await db
//         .query(c_grupo.tablaGrupo)
//         .then((value) => value.map((e) => BDGrupo.fromMap(e)).toList());
//     listPersonaGrupo.forEach((e) async {
//       var pg = BDPersonaGrupo.fromMap(e);
//       if (listpg
//               .firstWhere((element) => element.id_grupo == pg.id_grupo,
//                   orElse: () => BDGrupo.fromNull())
//               .id_grupo !=
//           -1) await db.insert(c_personaGrupo.tablaPersonaGrupo, pg.toMap());
//     });
//   }

//   Future<void> insertarPersonaGrupoConductor(
//           List<dynamic> listPersonaGrupo) async =>
//       listPersonaGrupo.forEach((e) async => await db.insert(
//           c_personaGrupo.tablaPersonaGrupo, BDPersonaGrupo.fromMap(e).toMap()));

//   Future<void> insertarPersonaGrupoUnidad(
//           BDPersonaGrupo bdPersonaGrupo) async =>
//       await db.insert(c_personaGrupo.tablaPersonaGrupo, bdPersonaGrupo.toMap());

//   Future<void> eliminarTodo() async =>
//       await db.delete(c_personaGrupo.tablaPersonaGrupo);

//   Future<List<BDGrupo>> consultarGrupo(int id_persona) async =>
//       await db.rawQuery(
//           '''SELECT * FROM ${c_grupo.tablaGrupo} G,${c_personaGrupo.tablaPersonaGrupo} PG 
//             WHERE G.${c_grupo.id_grupo} = PG.${c_personaGrupo.id_grupo} AND PG.${c_personaGrupo.id_persona} = ? 
//             ORDER BY G.${c_grupo.nombre}''',
//           [
//             id_persona
//           ]).then(
//           (listGrupo) => listGrupo.map((e) => BDGrupo.fromMap(e)).toList());

//   Future<List<BDPersona>> consultarPersona(int id_grupo) async =>
//       await db.rawQuery(
//         '''SELECT * FROM ${c_persona.tablaPersona} P,${c_personaGrupo.tablaPersonaGrupo} PG 
//             WHERE P.${c_persona.id_persona} = PG.${c_personaGrupo.id_persona} AND P.${c_personaGrupo.id_grupo} = $id_grupo''',
//       ).then(
//           (listGrupo) => listGrupo.map((e) => BDPersona.fromMap(e)).toList());

//   Future<List<BDGrupo>> consultaGruposNoAsignador(String where) async =>
//       await db
//           .query(c_grupo.tablaGrupo,
//               where: where.isNotEmpty ? where : null, orderBy: c_grupo.nombre)
//           .then(
//               (listGrupo) => listGrupo.map((e) => BDGrupo.fromMap(e)).toList());

//   Future<void> eliminar(BDPersonaGrupo bdPersonaGrupo) async =>
//       await db.delete(c_personaGrupo.tablaPersonaGrupo,
//           where: '${c_personaGrupo.id} = "${bdPersonaGrupo.id}"');

//   Future<void> nuevoPersonaGrupo(BDPersonaGrupo respuesta) async =>
//       await db.insert(c_personaGrupo.tablaPersonaGrupo, respuesta.toMap());

//   Future<List<BDPersonaGrupo>> consultarTodo() async => await db
//       .query(c_personaGrupo.tablaPersonaGrupo)
//       .then((listPersonaGrupo) =>
//           listPersonaGrupo.map((e) => BDPersonaGrupo.fromMap(e)).toList());

//   Future<List<BDPersonaGrupo>> consultarPersonaGrupo(int id_persona) async =>
//       await db.query(c_personaGrupo.tablaPersonaGrupo,
//           where: '${c_personaGrupo.id_persona} = ?',
//           whereArgs: [
//             id_persona
//           ]).then(
//           (listPG) => listPG.map((e) => BDPersonaGrupo.fromMap(e)).toList());

//   Future<void> eliminarPersonaGrupoIdPersona(int id_persona) async =>
//       await db.delete(c_personaGrupo.tablaPersonaGrupo,
//           where: '${c_personaGrupo.id_persona} = ?', whereArgs: [id_persona]);
// }
