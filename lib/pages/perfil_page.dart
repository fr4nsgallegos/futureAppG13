import 'package:flutter/material.dart';
import 'package:futureappg13/models/persona_model.dart';
import 'package:futureappg13/widgets/perfil_card_widget.dart';

class PerfilPage extends StatefulWidget {
  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  PersonaModel? personaPerfil;

  Future<PersonaModel> getInfoPerfil() {
    return Future.delayed(Duration(seconds: 5), () {
      return jhonny;
    });
  }

  Future<void> fetchPersonaPerfil() async {
    personaPerfil = await getInfoPerfil();
    setState(() {});
    // getInfoPerfil().then((info) {
    //   personaPerfil = info;
    //   setState(() {});
    // });
  }

  @override
  void initState() {
    fetchPersonaPerfil();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: getInfoPerfil(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("Error ${snapshot.error}"));
            } else {
              final PersonaModel user = snapshot.data!;
              return PerfilCardWidget(user);
            }
          },
        ),

        //  personaPerfil == null
        //     ? Center(child: CircularProgressIndicator())
        //     : Stack(
        //         children: [
        //           Container(
        //             width: double.infinity,
        //             height: screenHeight / 4,
        //             decoration: BoxDecoration(
        //               color: Color(0xff71829C),
        //               borderRadius: BorderRadius.only(
        //                 bottomRight: Radius.circular(30),
        //                 bottomLeft: Radius.circular(30),
        //               ),
        //             ),
        //           ),
        //           PerfilCardWidget(personaPerfil!),
        //         ],
        //       ),
      ),
    );
  }
}
