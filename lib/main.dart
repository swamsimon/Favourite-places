import 'package:favourite_places/screens/places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 165, 9, 12),
  // ignore: deprecated_member_use
  onBackground: const Color.fromARGB(255, 25, 172, 226),
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.surface,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.rajdhaniTextTheme().copyWith(
    titleSmall: GoogleFonts.rajdhani(fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.rajdhani(fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.rajdhani(fontWeight: FontWeight.bold),
  ),
);

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Great Places',
      theme: theme,
      home: const PlacesScreenlist(),
    );
  }
}
