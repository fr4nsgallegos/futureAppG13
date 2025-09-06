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

  Future<List<Map<String, dynamic>>> getItems() {
    return Future.delayed(Duration(seconds: 3), () {
      return [
        {"id": 1, "name": "zapatos"},
        {"id": 2, "name": "Vestidos"},
        {"id": 3, "name": "Zapatillas"},
        {"id": 4, "name": "Polos"},
        {"id": 5, "name": "Camisas"},
        {"id": 6, "name": "Correas"},
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // SEGUNDO EJEMPLO DE FUTUREBUILDER
            FutureBuilder(
              future: getItems(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data);
                  List<Map<String, dynamic>> data = snapshot.data;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(data[index]["name"]),
                          leading: Text(data[index]["id"].toString()),
                        );
                      },
                    ),
                  );
                }
                return Center(child: CircularProgressIndicator());
              },
            ),

            // PRIMER EJEMPLO CON FUTUREBUILDER
            // FutureBuilder(
            //   future: getData(),
            //   builder: (BuildContext context, AsyncSnapshot snapshot) {
            //     print("------------------------------");
            //     print("SNAPSHOT: $snapshot");
            //     print("ESTADO DE CONEXIÓN: ${snapshot.connectionState}");
            //     print("HAS ERROR: ${snapshot.hasError}");
            //     print("ERROR: ${snapshot.error}");
            //     print("HAS DATA: ${snapshot.hasData}");
            //     print("DATA: ${snapshot.data}");
            //     print("------------------------------");
            //     if (snapshot.connectionState == ConnectionState.waiting) {
            //       return Center(
            //         child: SizedBox(
            //           height: 120,
            //           width: 120,
            //           child: CircularProgressIndicator(
            //             color: Colors.pink,
            //             strokeWidth: 20,
            //           ),
            //         ),
            //       );
            //     } else if (snapshot.hasError) {
            //       return Text(
            //         "Error: ${snapshot.error}",
            //         style: TextStyle(color: Colors.red, fontSize: 40),
            //       );
            //     } else if (snapshot.hasData) {
            //       return Text(snapshot.data, style: TextStyle(fontSize: 50));
            //     } else {
            //       return Text("Sin datos", style: TextStyle(fontSize: 50));
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
