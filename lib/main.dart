import 'package:flutter/material.dart';
import 'home_page.dart';
import 'cart_page.dart';
import 'favorites_page.dart';
import 'history_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/cart': (context) => CartPage(),
        '/favorites': (context) => FavoritesPage(),
        '/history': (context) => HistoryPage(),
      },
    );
  }
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });//no back


    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/splash/Splash page.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}