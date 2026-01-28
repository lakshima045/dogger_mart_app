import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(DoggymartApp());
}

class DoggymartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
