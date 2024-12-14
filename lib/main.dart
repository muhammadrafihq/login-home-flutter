import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'view/login_page.dart';
import 'view/home_page.dart';
import 'view/detail_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  MyApp({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOGIN HOME',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: isLoggedIn ? '/home' : '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
