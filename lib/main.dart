import 'package:flutter/material.dart';
import 'package:flutter_sql/entidad/bd_url.dart';

import 'init/initSqlMobile.dart';
import 'sql/procesos/sqlServicios.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DataBaseSql.configurePrefs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  SqlServicios sqlServicios = SqlServicios();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        backgroundColor: Colors.red,
      ),
      body: body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var d = DateTime.now().microsecond;
          await sqlServicios.insertarUrlUnic(BdUrl(
              codigo: d,
              respuesta: 'respuesta',
              id_persona: d,
              id_parametro: d,
              valor1: 'valor1',
              valor2: 'valor2',
              valor3: 'valor3',
              descripcion: 'descripcion'));
          setState(() {});
        },
        child: Icon(Icons.save),
      ),
    );
  }

  Widget body() {
    return FutureBuilder<List<BdUrl>>(
      future: sqlServicios.consultaUrl(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }
        if (snapshot.data!.isEmpty) {
          return Text('Sin datos');
        }
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...snapshot.data!.map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [Text(e.codigo.toString()), Text(e.toString())],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
