import 'package:flutter/material.dart';
import 'package:fog_app/Register/RegisterView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color.fromARGB(255, 248, 95, 106),
          primarySwatch: Colors.red,
          // Define the default font family.
          fontFamily: 'Nunito',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(headline4: TextStyle(color: Colors.black)),
          buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              height: 48,
              buttonColor: Color.fromARGB(255, 248, 95, 106))),
      home: RegisterView(),
    );
  }
}
