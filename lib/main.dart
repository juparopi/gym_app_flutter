import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ui/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Metric',
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        primaryColor: Color.fromARGB(255, 255, 255, 255),
        scaffoldBackgroundColor: Color.fromARGB(255, 119, 119, 119),
        textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
      ),
      home: LandingPage(),
    );
  }
}