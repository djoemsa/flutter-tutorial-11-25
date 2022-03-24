import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_eleventh_to_twentyfifth/screens/card_page.dart';
import 'package:flutter_eleventh_to_twentyfifth/screens/draggable_page.dart';
import 'package:flutter_eleventh_to_twentyfifth/screens/login_page.dart';
import 'package:flutter_eleventh_to_twentyfifth/screens/menu_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/menu-page': (context) => MenuPage(),
        '/card-page': (context) => CardPage(),
        '/draggable-page': (context) => DragPage(),
      },
    );
  }
}
