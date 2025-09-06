import 'package:flutter/material.dart';

class FutureBuilderPage extends StatelessWidget {
  const FutureBuilderPage({super.key});

  Future<String> getData() async {
    return Future.delayed(
      Duration(seconds: 5),
      () => "Datos cargados correctamente",
    );
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
                return Container(width: 20, height: 20, color: Colors.red);
              },
            ),
          ],
        ),
      ),
    );
  }
}
