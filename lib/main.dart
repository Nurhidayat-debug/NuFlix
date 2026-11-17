import 'package:flutter/material.dart';
import 'package:nuflix/colors.dart';
import 'package:nuflix/layout.dart';
import 'package:nuflix/services/tmdb_service.dart';
import 'package:nuflix/themes.dart';

void main() async{
  // await dotenv.load(fileName: '.env');
  await TmdbService.initialize();
  runApp(const NuflixApp());
}

class NuflixApp extends StatelessWidget {
  const NuflixApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nuflix",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Lato',
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: MColors.themeBlack,
        navigationBarTheme: MThemes.navigationBarThemeData,
        searchBarTheme: MThemes.searchBarThemeData
      ),
      home: const MLayout(),
    );
  }

}