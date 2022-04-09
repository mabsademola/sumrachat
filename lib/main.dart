import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/nav_screen.dart';
import 'widget/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sumrachat',
      theme: ThemeData(
          textTheme: GoogleFonts.sourceSansProTextTheme(),
          primaryColorDark: AppColors.blackColor,
          primarySwatch: Colors.blue),
      home: NavScreen(),
    );
  }
}
