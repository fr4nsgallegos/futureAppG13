import 'package:flutter/material.dart';

class FutureBuilderPage extends StatelessWidget {
  const FutureBuilderPage({super.key});

  Future<String> getData() async {
    // MODO PARA TRAER INFORMACIÓN CORRECTAMENTE
    // return Future.delayed(
    //   Duration(seconds: 5),
    //   () => "Datos cargados correctamente",
    // );

    // MODO PARA SIMULAR UN ERROR
    await Future.delayed(Duration(seconds: 5), () {});
    throw Exception("Error al cargar datos");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FutureBuilder(
              future: getData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                print("------------------------------");
                print("SNAPSHOT: $snapshot");
                print("ESTADO DE CONEXIÓN: ${snapshot.connectionState}");
                print("HAS ERROR: ${snapshot.hasError}");
                print("ERROR: ${snapshot.error}");
                print("HAS DATA: ${snapshot.hasData}");
                print("DATA: ${snapshot.data}");
                print("------------------------------");
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child: CircularProgressIndicator(
                        color: Colors.pink,
                        strokeWidth: 20,
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    "Error: ${snapshot.error}",
                    style: TextStyle(color: Colors.red, fontSize: 40),
                  );
                } else if (snapshot.hasData) {
                  return Text(snapshot.data, style: TextStyle(fontSize: 50));
                } else {
                  return Text("Sin datos", style: TextStyle(fontSize: 50));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
