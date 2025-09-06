class PersonaModel {
  String nombres;
  String apePat;
  String apeMat;
  String profesion;
  int articulos;
  int followers;
  double rating;

  PersonaModel({
    required this.nombres,
    required this.apePat,
    required this.apeMat,
    required this.profesion,
    required this.articulos,
    required this.followers,
    required this.rating,
  });
}

PersonaModel jhonny = PersonaModel(
  nombres: "Jhonny",
  apePat: "Gallegos",
  apeMat: "Mendoza",
  profesion: "Ing. Software",
  articulos: 20,
  followers: 150,
  rating: 8.5,
);
