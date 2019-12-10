import 'package:flutter/material.dart';
import './app_screens/login_page.dart';

void main() => runApp(MyLogin());

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: LoginPage()
        );
  }
}