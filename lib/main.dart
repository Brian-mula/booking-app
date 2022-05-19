import 'package:dashboard/main_home_page.dart';
import 'package:dashboard/pages/authentication/loginPage.dart';
import 'package:dashboard/pages/authentication/pinLogin.dart';
import 'package:dashboard/pages/authentication/registerPage.dart';
import 'package:dashboard/pages/qr_scanner.dart';
import 'package:dashboard/pages/seatPage.dart';
import 'package:dashboard/pages/ticketPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dashboard',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainHomePage()
        // home:const Register(),
        );
  }
}
