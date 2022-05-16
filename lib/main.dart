import 'package:dashboard/main_home_page.dart';
import 'package:dashboard/pages/authentication/loginPage.dart';
import 'package:dashboard/pages/authentication/pinLogin.dart';
import 'package:dashboard/pages/authentication/registerPage.dart';
import 'package:dashboard/pages/qr_scanner.dart';
import 'package:dashboard/pages/seatPage.dart';
import 'package:dashboard/pages/ticketPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
