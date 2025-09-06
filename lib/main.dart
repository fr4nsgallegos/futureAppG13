import 'package:flutter/material.dart';
import 'package:futureappg13/pages/desafios_container_page.dart';
import 'package:futureappg13/pages/future_builder_page.dart';
import 'package:futureappg13/pages/home_page.dart';
import 'package:futureappg13/pages/perfil_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: DesafiosContainerPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // OPCIÓN 1: Aplicar la fuente a todo el texttheme
        textTheme: GoogleFonts.poppinsTextTheme(),

        // Personalizar appbar
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.fascinate(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
