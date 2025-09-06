import 'package:flutter/material.dart';
import 'package:futureappg13/models/persona_model.dart';

class PerfilCardWidget extends StatelessWidget {
  PersonaModel personaPerfil;
  PerfilCardWidget(this.personaPerfil, {super.key});

  Widget buildColumnRating(String title, String value) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.w400)),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: screenHeight / 12, horizontal: 16),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 3.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(0, 5), blurRadius: 10),
        ],
      ),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.network(
                  personaPerfil!.urlImage,
                  height: screenWidth / 3.5,
                  width: screenWidth / 4,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${personaPerfil!.nombres} ${personaPerfil!.apePat}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    Text(
                      personaPerfil!.profesion,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildColumnRating(
                            "Artículos",
                            personaPerfil!.articulos.toString(),
                          ),
                          buildColumnRating(
                            "Followers",
                            personaPerfil!.followers.toString(),
                          ),
                          buildColumnRating(
                            "Rating",
                            personaPerfil!.rating.toString(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 3, color: Colors.black26),
                    ),
                    child: Text("Chat"),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueAccent,
                    ),
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
