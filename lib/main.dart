import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:submission_dicoding/pages/main_home_page.dart';
import 'package:submission_dicoding/pages/welcome.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent

  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325)
      ),
      title: 'Online Shop',
      home: Welcome(),
    );
  }
}