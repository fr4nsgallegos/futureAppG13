class PersonaModel {
  String nombres;
  String apePat;
  String apeMat;
  String profesion;
  int articulos;
  int followers;
  double rating;
  String urlImage;

  PersonaModel({
    required this.nombres,
    required this.apePat,
    required this.apeMat,
    required this.profesion,
    required this.articulos,
    required this.followers,
    required this.rating,
    required this.urlImage,
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
  urlImage:
      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?_gl=1*1hnz21p*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTcxMjk0OTgkbzY5JGcxJHQxNzU3MTI5NTA5JGo0OSRsMCRoMA..",
);
