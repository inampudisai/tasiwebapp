import 'package:flutter/material.dart';
import 'package:tasiwebapp/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasiwebapp/views/main_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tasi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // tested with just a hot reload.
          primaryColor: kPrimaryColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          useMaterial3: true,
        ),
        home: MainPageView());
  }
}
