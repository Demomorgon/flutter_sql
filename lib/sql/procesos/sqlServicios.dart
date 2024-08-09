// ignore_for_file: prefer_final_fields, avoid_function_literals_in_foreach_calls, file_names, non_constant_identifier_names

import 'package:sqflite/sqflite.dart';

import '../../cabecera/ca_url.dart';
import '../../entidad/bd_url.dart';
import '../../init/initSqlMobile.dart';

// import 'package:trackingbol/sql/sql.dart';

class SqlServicios {
  // DatabaseTrackingBol _db = DatabaseTrackingBol();
  Database db = DataBaseSql.db;
  CabeceraUrl c_url = CabeceraUrl();
  Future<void> insertarUrl(List<dynamic> url) async =>
      // await _db.initializeDB().then((db) =>
      url.forEach((e) async =>
          await db.insert(c_url.tablaUrl, BdUrl.fromMap(e).toMap()));

  Future<void> insertarUrlUnic(BdUrl u) async =>
      await db.insert(c_url.tablaUrl, u.toMap());

  Future<List<BdUrl>> consultaUrl() async =>
      // await _db.initializeDB().then((db) async =>
      await db
          .query(c_url.tablaUrl)
          .then((listUrl) => listUrl.map((e) => BdUrl.fromMap(e)).toList());

  Future<void> eliminarUrl() async => await db.delete(c_url.tablaUrl);
}
