// import 'package:hive_flutter/hive_flutter.dart';

// ignore_for_file: file_names

// import 'package:sqflite/sqlite_api.dart';

import '../sql/sql.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseSql {
  static late Database db;

  static Future<void> configurePrefs() async {
    db = await DatabaseTrackingBol().initializeDB();
    // await Hive.initFlutter();
    // prefs = await SharedPreferences.getInstance();
  }
}
