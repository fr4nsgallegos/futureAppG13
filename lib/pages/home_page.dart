import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Hola a todos";

  Future<String> getTitleAsync() {
    return Future.delayed(Duration(seconds: 3), () => "Los inocentes");
  }

  Future<void> fetchTitle() async {
    getTitleAsync().then((value) {
      title = value;
      setState(() {});
    });
  }

  Future<void> fetchTitle2() async {
    title = await getTitleAsync();
    setState(() {});
  }

  @override
  void initState() {
    // fetchTitle();
    fetchTitle2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // No debería ir aquí por que en cada camvio de estado va asignar siempre el valor de gettitleAsync a la variable title
    // getTitleAsync().then((value) {
    //   title = value;
    //   setState(() {});
    // });
    return Scaffold(
      appBar: AppBar(title: Text("future")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: TextStyle(fontSize: 50)),
            ElevatedButton(
              onPressed: () {
                title = "Mi planta de naranja lima";
                setState(() {});
              },
              child: Text("Cambiar título"),
            ),
          ],
        ),
      ),
    );
  }
}
