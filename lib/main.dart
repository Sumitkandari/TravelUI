import 'package:flutter/material.dart';
import 'package:travelui/screen/HomeScreen.dart';
//flutter run -d chrome --web-port=8080 --web-hostname=127.0.0.1
main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:Colors.green[900],
        accentColor:Colors.green[100],
        scaffoldBackgroundColor:Colors.white,
      ),
      home: HomeScreen(),
      
      
    );
  }
}