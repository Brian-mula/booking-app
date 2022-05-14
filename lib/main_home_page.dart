import 'package:dashboard/pages/accounts_page.dart';
import 'package:dashboard/pages/home_page.dart';
import 'package:dashboard/pages/message_page.dart';
import 'package:dashboard/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  List pages = [
    const HomePage(),
    const SearchPage(),
    const MessagePage(),
    const AccountsPage(),
  ];

  int currentIndex = 0;
  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.black38,
          selectedItemColor: Colors.black54,
          elevation: 0.0,
          currentIndex: currentIndex,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.article_outlined), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Accounts")
          ]),
    );
  }
}
