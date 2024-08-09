// ignore_for_file: non_constant_identifier_names

import 'package:path/path.dart';

import '../cabecera/ca_url.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseTrackingBol {
  static final CabeceraUrl c_url = CabeceraUrl();

  // static final CabeceraPersonaGrupo c_personaGrupo = CabeceraPersonaGrupo();
//

  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(join(path, 'amuyutec.db'),
        onCreate: (database, version) async {
      await database.execute('''CREATE TABLE ${c_url.tablaUrl}(
            ${c_url.codigo} INTEGER,
            ${c_url.respuesta} TEXT,
            ${c_url.id_persona} INTEGER,
            ${c_url.id_parametro} INTEGER PRIMARY KEY,
            ${c_url.valor1} TEXT,
            ${c_url.valor2} TEXT,
            ${c_url.valor3} TEXT,
            ${c_url.descripcion} TEXT)''');
      //       await database.execute('''CREATE TABLE ${c_recurso.tablaRecurso}(
      //       ${c_recurso.codigo} INTEGER,
      //       ${c_recurso.respuesta} TEXT,
      //       ${c_recurso.id_persona} INTEGER,
      //       ${c_recurso.id_recurso} INTEGER PRIMARY KEY,
      //       ${c_recurso.id_rol} INTEGER,
      //       ${c_recurso.id_log_auditoria} INTEGER,
      //       ${c_recurso.codigo_recurso} TEXT,
      //       ${c_recurso.descripcion} TEXT,
      //       ${c_recurso.estado} TEXT)''');
      // await database.execute('''CREATE TABLE ${c_rol.tablaRol}(
      //       ${c_rol.id_persona} INTEGER,
      //       ${c_rol.id_rol} INTEGER PRIMARY KEY,
      //       ${c_rol.codigo_rol} TEXT,
      //       ${c_rol.descripcion} TEXT,
      //       ${c_rol.estado} TEXT)''');
      // await database.execute('''CREATE TABLE ${c_vehiculo.tablaVehiculo}(
      //       ${c_vehiculo.codigo} INTEGER,
      //       ${c_vehiculo.respuesta} TEXT,
      //       ${c_vehiculo.id_persona} INTEGER,
      //       ${c_vehiculo.id_dispositivo} INTEGER PRIMARY KEY,
      //       ${c_vehiculo.id_log_auditoria} INTEGER,
      //       ${c_vehiculo.marca} TEXT,
      //       ${c_vehiculo.modelo} TEXT,
      //       ${c_vehiculo.numero_linea} TEXT,
      //       ${c_vehiculo.imei} TEXT,
      //       ${c_vehiculo.proveedor_linea} TEXT,
      //       ${c_vehiculo.placa} TEXT,
      //       ${c_vehiculo.imagen} TEXT,
      //       ${c_vehiculo.estado} TEXT,
      //       ${c_vehiculo.descripcion} TEXT,
      //       ${c_vehiculo.ccid} TEXT)''');
      // await database.execute('''CREATE TABLE ${c_grupo.tablaGrupo}(
      //       ${c_grupo.codigo} INTEGER,
      //       ${c_grupo.respuesta} TEXT,
      //       ${c_grupo.id_persona} INTEGER,
      //       ${c_grupo.id_grupo} INTEGER PRIMARY KEY,
      //       ${c_grupo.id_log_auditoria} INTEGER,
      //       ${c_grupo.nombre} TEXT,
      //       ${c_grupo.estado} TEXT,
      //       ${c_grupo.clasificacion} TEXT)''');
      // await database.execute(
      //     '''CREATE TABLE ${c_estadoNotificacion.tablaEstadoNotificacion}(
      //       ${c_estadoNotificacion.id_dispositivo} INTEGER,
      //       ${c_estadoNotificacion.id_geocerca} INTEGER,
      //       ${c_estadoNotificacion.topico} TEXT PRIMARY KEY,
      //       ${c_estadoNotificacion.tipo} TEXT)''');
      // await database
      //     .execute('''CREATE TABLE ${c_datosAdicionales.tablaDatosAdicionales}(
      //       ${c_datosAdicionales.id_persona} INTEGER,
      //       ${c_datosAdicionales.id_datos_adicionales} INTEGER PRIMARY KEY,
      //       ${c_datosAdicionales.id_dispositivo} INTEGER,
      //       ${c_datosAdicionales.id_log_auditoria} INTEGER,
      //       ${c_datosAdicionales.descripcion} TEXT,
      //       ${c_datosAdicionales.valor} DOUBLE,
      //       ${c_datosAdicionales.valor2} TEXT,
      //       ${c_datosAdicionales.unidad} TEXT,
      //       ${c_datosAdicionales.estado} TEXT)''');
      // await database
      //     .execute('''CREATE TABLE ${c_historialRuta.tablaHistorialRuta}(
      //       ${c_historialRuta.id_persona} INTEGER,
      //       ${c_historialRuta.id_dispositivo} TEXT,
      //       ${c_historialRuta.fecha_hora} INTEGER,
      //       ${c_historialRuta.latitud} DOUBLE,
      //       ${c_historialRuta.longitud} DOUBLE,
      //       ${c_historialRuta.motor_encendido} INTEGER,
      //       ${c_historialRuta.auto_movimiento} INTEGER,
      //       ${c_historialRuta.puerta_abierta} INTEGER,
      //       ${c_historialRuta.velocidad} TEXT,
      //       ${c_historialRuta.bateria} TEXT,
      //       ${c_historialRuta.id} TEXT PRIMARY KEY,
      //       ${c_historialRuta.bloqueoMotor} INTEGER,
      //       ${c_historialRuta.respuesta} TEXT,
      //       ${c_historialRuta.modoAlerta} INTEGER,
      //       ${c_historialRuta.gps} INTEGER,
      //       ${c_historialRuta.reinicio} INTEGER,
      //       ${c_historialRuta.alertaVibracion} INTEGER,
      //       ${c_historialRuta.puerta_abierta2} INTEGER,
      //       ${c_historialRuta.sensorCombustible} TEXT,
      //       ${c_historialRuta.energiaExterna} INTEGER,
      //       ${c_historialRuta.tiempoReporte} TEXT,
      //       ${c_historialRuta.valoresExtra} TEXT)''');
      // await database
      //     .execute('''CREATE TABLE ${c_grupoDispositivo.tablaGrupoDispositivo}(
      //       ${c_grupoDispositivo.id} TEXT PRIMARY KEY,
      //       ${c_grupoDispositivo.id_grupo} INTEGER,
      //       ${c_grupoDispositivo.id_dispositivo} INTEGER,
      //       ${c_grupoDispositivo.clasificacion} TEXT)''');
      // await database.execute(
      //     '''CREATE TABLE ${c_persona.tablaPersona}(
      //       ${c_persona.id_persona} INTEGER PRIMARY KEY,
      //       ${c_persona.id_persona_padre} INTEGER,
      //       ${c_persona.nombre} TEXT,
      //       ${c_persona.primer_apellido} TEXT,
      //       ${c_persona.segundo_apellido} TEXT,
      //       ${c_persona.fecha_nacimiento} TEXT,
      //       ${c_persona.correo} TEXT,
      //       ${c_persona.genero} TEXT,
      //       ${c_persona.numero_identificacion} TEXT,
      //       ${c_persona.telefono} TEXT,
      //       ${c_persona.direccion} TEXT,
      //       ${c_persona.usuario} TEXT,
      //       ${c_persona.estado} TEXT,
      //       ${c_persona.jwt_llave} TEXT)''');
      // await database
      //     .execute('''CREATE TABLE ${c_personaGrupo.tablaPersonaGrupo}(
      //       ${c_personaGrupo.id} TEXT PRIMARY KEY,
      //       ${c_personaGrupo.id_grupo} INTERGER,
      //       ${c_personaGrupo.id_persona} INTEGER)''');
      // await database
      //     .execute('''CREATE TABLE ${c_notificacion.tablaNotificacion}(
      //       ${c_notificacion.id_persona} INTEGER,
      //       ${c_notificacion.id_dispositivo} TEXT,
      //       ${c_notificacion.fecha_hora} INTEGER,
      //       ${c_notificacion.latitud} DOUBLE,
      //       ${c_notificacion.longitud} DOUBLE,
      //       ${c_notificacion.motor_encendido} INTEGER,
      //       ${c_notificacion.auto_movimiento} INTEGER,
      //       ${c_notificacion.puerta_abierta} INTEGER,
      //       ${c_notificacion.velocidad} TEXT,
      //       ${c_notificacion.bateria} TEXT,
      //       ${c_notificacion.id} TEXT PRIMARY KEY,
      //       ${c_notificacion.bloqueoMotor} INTEGER,
      //       ${c_notificacion.respuesta} TEXT,
      //       ${c_notificacion.modoAlerta} INTEGER,
      //       ${c_notificacion.gps} INTEGER,
      //       ${c_notificacion.reinicio} INTEGER,
      //       ${c_notificacion.alertaVibracion} INTEGER,
      //       ${c_notificacion.puerta_abierta2} INTEGER,
      //       ${c_notificacion.sensorCombustible} TEXT,
      //       ${c_notificacion.energiaExterna} INTEGER,
      //       ${c_notificacion.tiempoReporte} TEXT,
      //       ${c_notificacion.id_geocercas} INTEGER,
      //       ${c_notificacion.ruta} TEXT,
      //       ${c_notificacion.valoresExtra} TEXT)''');
      // await database.execute(
      //     '''CREATE TABLE ${c_alarma.tablaAlarma}(
      //       ${c_alarma.time} INTEGER PRIMARY KEY,
      //       ${c_alarma.estado} INTEGER)''');
      // await database.execute(
      //     '''CREATE TABLE ${c_geocerca.tablaGeocerca}(
      //       ${c_geocerca.id_geocercas} INTEGER PRIMARY KEY,
      //       ${c_geocerca.id_dispositivo} INTEGER,
      //       ${c_geocerca.detalle} TEXT,
      //       ${c_geocerca.referencias} TEXT,
      //       ${c_geocerca.valor_entrada} INTEGER,
      //       ${c_geocerca.valor_salida} INTEGER,
      //       ${c_geocerca.habilitar_notificacion_entrada} INTEGER,
      //       ${c_geocerca.habilitar_notificacion_salida} INTEGER)''');
      // await database.execute('''CREATE TABLE ${c_notificacionActiva.tablaNotificacionActiva}(
      //       ${c_notificacionActiva.id} TEXT PRIMARY KEY,
      //       ${c_notificacionActiva.id_dispositivo} INTEGER,
      //       ${c_notificacionActiva.fecha_hora} INTEGER,
      //       ${c_notificacionActiva.ruta} TEXT)''');
    }, version: 1);
  }
}
