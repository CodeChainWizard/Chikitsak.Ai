import 'package:flutter/material.dart';
import 'package:doctor/Screens/LoginScreen.dart';
import 'package:doctor/Screens/RegisterScreen.dart';
import 'package:doctor/Screens/DoctorAimain.dart';
import 'package:doctor/Screens/DashboardScreen.dart';
import 'package:doctor/Screens/ChatScreen.dart';
import 'package:doctor/Screens/GenerateReport.dart';
import 'package:doctor/Screens/DoctorAI.dart';


import 'package:doctor/Screens/report.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFF07f3de,
          <int, Color>{
            50: Color(0xFF07f3de),
            100: Color(0xFF07f3de),
            200: Color(0xFF07f3de),
            300: Color(0xFF07f3de),
            400: Color(0xFF07f3de),
            500: Color(0xFF07f3de),
            600: Color(0xFF07f3de),
            700: Color(0xFF07f3de),
            800: Color(0xFF07f3de),
            900: Color(0xFF07f3de),
          },
        ),
      ),
      // Rest of your app code
      home: LoginScreen(),
    );
  }
}



